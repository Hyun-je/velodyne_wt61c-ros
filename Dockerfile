FROM osrf/ros:melodic-desktop-full-bionic

# Install dependencies
RUN apt-get update && apt-get install -y \
    ros-melodic-serial \
    ros-melodic-velodyne \

# Setup ROS workspace
RUN echo "source /opt/ros/melodic/setup.bash" >> ~/.bashrc && \
    mkdir -p /home/catkin_ws/src
WORKDIR /home/catkin_ws

# Copy source files
RUN mkdir -p ./src/velodyne-record
COPY ./src ./src/velodyne-record

# Build
RUN /bin/bash -c '. /opt/ros/melodic/setup.bash; cd /home/catkin_ws; catkin_make' && \
    echo "source /home/catkin_ws/devel/setup.bash" >> ~/.bashrc
