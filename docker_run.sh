# allow docker gui mode
xhost +local:docker

# run docker container
docker run -it --privileged --env=DISPLAY --network=host -v /dev:/dev -v /tmp/.X11-unix:/tmp/.X11-unix -v ~/rosbag:/root/rosbag ros:velodyne-record
