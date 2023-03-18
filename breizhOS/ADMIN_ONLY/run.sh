#!/usr/bin/bash

#
# $1 -> Image name
#

# Variables
UUID=/tmp/$(/usr/bin/uuidgen)/

# Create env
/usr/bin/mkdir $UUID               &> /dev/stderr
/usr/bin/cp -r ../breizhOS/* $UUID &> /dev/stderr
/usr/bin/cp ./emulate.sh $UUID     &> /dev/stderr

# Create image
cd $UUID
/usr/bin/make clear      &> /dev/stderr
/usr/bin/make init       &> /dev/stderr
/usr/bin/make bootloader &> /dev/stderr
/usr/bin/make kernel     &> /dev/stderr
/usr/bin/cp $1 ./bin/    &> /dev/stderr
/usr/bin/make link       &> /dev/stderr

# Run image
./emulate.sh img/breizhOS.img &> /dev/stderr

# Show logs
/usr/bin/cat ./result.log

# Destruct logs
/usr/bin/rm ./result.log &> /dev/stderr

# Destruct env
/usr/bin/rm -rf $UUID &> /dev/stderr