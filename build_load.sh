#!/usr/bin/env bash
set -e
echo "-> Unloading kernel module..."
sudo rmmod hid-sony || true

echo "-> Building module..."
make

echo "-> Loading module..."
sudo insmod ./hid-sony.ko
