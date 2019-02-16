sudo modprobe mttcan
sudo ip link set can0 up type can bitrate 500000

source devel/setup.bash

roslaunch demo_pkg demo.launch

