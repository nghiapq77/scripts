#!/bin/sh

TOGGLE=$HOME/.local/scripts/.toggle_redshift

if [ ! -e $TOGGLE ]; then
    touch $TOGGLE
    redshift -O 3500 -b 0.9
else
    rm $TOGGLE
    redshift -O 5500 -b 1.0
fi
