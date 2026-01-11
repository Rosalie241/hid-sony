#!/usr/bin/env bash
set -e
echo "-> Unloading kernel module..."
sudo rmmod hid-sony || true

echo "-> Building module..."
make

echo "-> Loading module..."
sudo modprobe ff-memless || true
sudo insmod ./hid-sony.ko
