#!/bin/bash

set -e

if test -n "${10}"; then
    ./lm399.py $1 $2 $3 $4 $5 > /tmp/1
    ./lm399.py $6 $7 $8 $9 ${10} > /tmp/2
elif test -n "$8"; then
    ./lm399.py $1 $2 $3 $4 > /tmp/1
    ./lm399.py $5 $6 $7 $8 > /tmp/2
elif test -n "$6"; then
    ./lm399.py $1 $2 $3 > /tmp/1
    ./lm399.py $4 $5 $6 > /tmp/2
elif test -n "$4"; then
    ./lm399.py $1 $2 > /tmp/1
    ./lm399.py $3 $4 > /tmp/2
elif test -n "$2"; then
    ./lm399.py $1 > /tmp/1
    ./lm399.py $2 > /tmp/2
else
    ./lm399.py > /tmp/1
    ./lm399.py > /tmp/2
fi

diff -urN --color=always /tmp/1 /tmp/2
