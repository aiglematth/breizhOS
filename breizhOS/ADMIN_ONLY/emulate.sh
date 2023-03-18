#!/usr/bin/bash

#
# $1 -> Image name
#

# Kill all subprocesses
trap "/usr/bin/pkill -P $$" EXIT INT

# Run kernel + user
/usr/bin/qemu-system-x86_64 -drive format=raw,file=$1 -boot a -no-reboot -nographic -serial file:result.log &

# Timeout
/usr/bin/sleep 15