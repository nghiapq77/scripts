#!/bin/sh

TOGGLE=$SCRIPTS/.toggle_redshift

if [ ! -e $TOGGLE ]; then
    touch $TOGGLE
    redshift -P -O 3500 -b 0.9
else
    rm $TOGGLE
    redshift -x
fi
