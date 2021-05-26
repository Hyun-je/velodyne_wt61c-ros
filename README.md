# velodyne_wt61c-ROS



## How to Build
### Ubuntu Native (Bionic + ROS Melodic)
1. Install dependencies
``` sh
sudo apt-get install ros-melodic-velodyne ros-melodic-serial
```
2. Clone source code
``` sh
git clone https://github.com/Hyun-je/velodyne_wt61c-ROS ~/catkin_ws/src
```
3. Run ```catkin_make```
``` sh
cd ~/catkin_ws && catkin_make
```

### Docker
1. Clone source code
``` sh
git clone https://github.com/Hyun-je/velodyne_wt61c-ROS
```
2. Build Dockerfile
``` sh
docker build -t ros:velodyne-record .
```
3. Run docker container
``` sh
xhost +local:docker       # allow docker gui mode
docker run -it --privileged --env=DISPLAY --network=host -v /dev:/dev -v /tmp/.X11-unix:/tmp/.X11-unix -v ~/rosbag:/root/rosbag ros:velodyne-record
```
