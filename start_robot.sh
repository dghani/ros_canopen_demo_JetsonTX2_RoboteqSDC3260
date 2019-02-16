#!/bin/bash
LOGGING_ENABLED=true

# Initialize CAN interface on an Nvidia Jetson TX2
# Reference: https://devtalk.nvidia.com/default/topic/1025010/jetson-tx2/how-to-use-can-on-jetson-tx2-/
modprobe can
modprobe can_raw
modprobe mttcan
ip link set can0 type can bitrate 500000 dbitrate 2000000 berr-reporting on fd on
ip link set up can0

source devel/setup.bash

if [ LOGGING_ENABLED ]; then
    CURRENTDATE=`date +"%m-%d-%Y_%T"`
    roslaunch demo_pkg demo.launch 2>&1 | tee "log_$CURRENTDATE.txt"
else
    roslaunch demo_pkg demo.launch
fi

