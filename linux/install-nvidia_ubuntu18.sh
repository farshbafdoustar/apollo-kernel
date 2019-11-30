#!/bin/bash

BUILD_BASE=`pwd`
NV_FILE="NVIDIA-Linux-x86_64-430.50.run"
NV_URL="https://us.download.nvidia.cn/XFree86/Linux-x86_64/430.50/${NV_FILE}"

wget NV_URL

sudo bash ./NVIDIA-Linux-x86_64-430.50.run --no-x-check -a -s --no-kernel-module

echo "Done to install nvidia kernel driver and user libraries."
