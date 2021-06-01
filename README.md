# velodyne_wt61c-ros
![Velodyne_Puck](https://user-images.githubusercontent.com/7419790/120263584-f38fa780-c2d6-11eb-90f7-ae16936fd36e.png)
![60555d711b5d1](https://user-images.githubusercontent.com/7419790/120263588-f5596b00-c2d6-11eb-89bd-3421208bfbd7.png)


## How to Build
### Ubuntu Native (Bionic + ROS Melodic)

```
# 1. Install dependencies
sudo apt-get install ros-melodic-velodyne ros-melodic-serial

# 2. Clone source code
git clone --recursive https://github.com/Hyun-je/velodyne_wt61c-ros ~/catkin_ws/src

# 3. Run catkin_make
cd ~/catkin_ws && catkin_make
```

### Docker
```
# 1. Clone source code
git clone --recursive https://github.com/Hyun-je/velodyne_wt61c-ros

# 2. Build Dockerfile
docker build -t ros:velodyne_wt61c .

# 3. Run docker container
xhost +local:docker       # allow docker gui mode (Ubuntu)
docker run -it --privileged --env=DISPLAY --network=host -v /dev:/dev -v /tmp/.X11-unix:/tmp/.X11-unix -v ~/rosbag:/root/rosbag ros:velodyne_wt61c
```

## How to Use
### Monitor 
Run rviz only
``` sh
roslaunch velodyne_wt61c monitor.launch
```

### Record
Run rviz & rosbag. bag files will be saved in `/root/rosbag`.
``` sh
roslaunch velodyne_wt61c record.launch
```
