#!/usr/bin/env python3

# LM399-solver.py: a script to explore the effect of component changes in the classic LM399 circuit.
#
# Example usage scenario:
# To see the effect of Rf drifting by 1%, run the script twice with different Rf values:
#   $ ./lm399.py rf=36000
#   $ ./lm399.py rf=36360

# Assumed Schematic:
# 
#    +------+-------+
#    |      |       |
#    |      /\      |
#   rf     /  \     rz
#    |    /    \    |
#    |   / -  + \   |
#    |   --------   |
#    |     |  |     |
#    |    vos |     |
#    |     |  |     |
#    +-----+  +-----+
#    |              |
#   rg              vz (LM399)
#    |              |
#   GND            GND
#


import time
import sys


def parse_args():
    # default values
    rf = 36000.0
    rg = 82000.0
    rz = 3000.0
    vz_nom = 6.95  # the zener voltage of the LM399 at 1mA
    vos = 0.0  # the input offset voltage of the opamp

    def parse_float(s):
        if s.endswith("M"):
            return float(s[:-1]) * 1000000.0
        if s.endswith("k"):
            return float(s[:-1]) * 1000.0
        elif s.endswith("m"):
            return float(s[:-1]) / 1000.0
        elif s.endswith("u"):
            return float(s[:-1]) / 1000000.0
        elif s.endswith("n"):
            return float(s[:-1]) / 1000000000.0
        else:
            return float(s)

    # parse the command line and override the default values
    for i in sys.argv:
        if i.startswith("rg="):
            rg = parse_float(i.split('=')[1])
        if i.startswith("rf="):
            rf = parse_float(i.split('=')[1])
        if i.startswith("rz="):
            rz = parse_float(i.split('=')[1])
        if i.startswith("vz="):
            vz_nom = parse_float(i.split('=')[1])
        if i.startswith("vos="):
            vos = parse_float(i.split('=')[1])
    return (rf, rg, rz, vz_nom, vos)


# format a floating point value to nanovolt precision.
def format_nano(f):
    places = 9
    fmt = "%0." + "%s" % places + "f"
    (whole, decimal) = (fmt % f).split('.')
    millis = decimal[0:3]
    micros = decimal[3:6]
    nanos = decimal[6:9]
    return "%s.%s,%s,%s" % (whole, millis, micros, nanos)


# format a floating point value to microvolt precision.
def format_micro(f):
    places = 6
    fmt = "%0." + "%s" % places + "f"
    (whole, decimal) = (fmt % f).split('.')
    millis = decimal[0:3]
    micros = decimal[3:6]
    return "%s.%s,%s" % (whole, millis, micros)


def solve(rf, rg, rz, vz_nom, vos, verbose=True):
    # vz_nom is the zener voltage of the LM399 measured at 1mA.
    # vz is the (iterated) zener voltage.
    vz = vz_nom
    if verbose:
        print("solving...")
    while True:
        # calculate the current state of the circuit, assuming vz is static
        vrg = vz - vos      # vrg is the voltage across rg
        irg = vrg / rg      # irg is the current through rg
        irf = irg
        vrf = irf * rf
        vopout = vrf + vrg  # vouput is the output voltage of the opamp 
        vrz = vrf
        irz = vrz / rz
        iz = irz            # iz is the current through the LM399

        # now update vz based on the updated circuit and loop if we haven't converged yet
        # assume a 1uA deviation from the 1mA nominal zener current will cause a 0.7uV shift in vz.
        new_vz = vz_nom + ((iz * 0.7) - 0.001)
        delta_vz = abs(new_vz - vz)
        if verbose:
            print("delta_vz: %0.16f" % delta_vz)
        if delta_vz > 0:
            vz = new_vz
            continue
        else:
            if verbose: print
            return (vz, iz, irf, vopout)


if __name__ == "__main__":
    (rf, rg, rz, vz_nom, vos) = parse_args()
    print("using rg: %s" % rg)
    print("using rf: %s" % rf)
    print("using rz: %s" % rz)
    print("using vz_nom: %s" % vz_nom)
    print("using vos: %s" % vos)
    print()

    (vz, iz, irf, vopout) = solve(rf, rg, rz, vz_nom, vos)

    print("irf:\t\t%s mA" % format_micro(irf * 1000))
    print("vopout:\t\t%s V" % format_nano(vopout))
    print()
    print("iz:\t\t%s mA" % format_micro(iz * 1000))
    print("vz:\t\t%s V" % format_nano(vz))
