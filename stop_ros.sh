#!/bin/bash

# Kill all the nodes
rosnode kill -a

# Kill the other things like the parameter server and ros master.
killall -9 roscore
killall -9 rosmaster
