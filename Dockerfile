FROM osrf/ros:melodic-desktop-full-bionic

RUN apt-get update && apt-get install -y \
    nano \
    net-tools \
    ros-melodic-rosbridge-suite \
    ros-melodic-serial \
    ros-melodic-velodyne \
    ros-melodic-cartographer \
    ros-melodic-cartographer-ros \
    ros-melodic-octomap \
    ros-melodic-octomap-server \
    ros-melodic-turtlebot3 \
    ros-melodic-turtlebot3-simulations

RUN mkdir -p /root/catkin_ws
WORKDIR /root/catkin_ws
RUN /bin/bash -c "source /opt/ros/melodic/setup.bash"

RUN mkdir -p /root/catkin_ws/velodyne-record
COPY ./src /root/catkin_ws/velodyne-record
