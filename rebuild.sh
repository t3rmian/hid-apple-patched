#!/bin/bash
sudo dkms remove hid-apple/1.0
sudo dkms add .
sudo dkms build hid-apple/1.0
sudo dkms install hid-apple/1.0
sudo update-initramfs -u
sudo modprobe -r hid_apple; sudo modprobe hid_apple

