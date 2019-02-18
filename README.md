# [Stuck. ros_canopen does not parse the EDS file of the SDC3260. ]


# ros_canopen_demo_JetsonTX2_RoboteqSDC3260
This is a minimal amount of code needed to start ROS and communicate with a motor controller over CAN using the ros_canopen package. ROS is running on an Nvidia JetsonTX2, and communicating with a Roboteq SDC3260 motor controller.

### Code not included:

The Jetson is running SocketCAN.

"ros-kinetic-ros-canopen" is the Ubuntu apt package used.

"ros-kinetic-desktop-full" is the Ubuntu ROS installation used.

### Physical setup

TODO: include pic.

CAN transceiver connected to Jetson: https://www.waveshare.com/wiki/SN65HVD230_CAN_Board

SDC3260 Motor controller: https://www.roboteq.com/index.php/roboteq-products-and-services/brushed-dc-motor-controllers/405/sdc3260-detail

Motor: [Some brushed DC motor from Anaheim Automation]


### Run the code

source devel/setup.bash

roslaunch demo_pkg demo.launch


