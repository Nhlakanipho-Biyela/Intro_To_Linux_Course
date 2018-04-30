#!/bin/bash

# This bash script will run launch_multi_drone.launch with different drone names for the amount of drones specified.
# This will initialize nodes for the amount of drones specified as well as separate topics for each drone.
# Each drones topic will be of the form /ardrone#/<topic_name>. i.e /ardrone/takeoff => /ardrone42/takeoff for drone # 42
# usage: launch_multiple_drones.sh <num_of_drones>

for (( i=1; i<=$1; i++))
do
	echo roslaunch launch_multi_drone.launch drone_name:=ardrone$i droneip:=192.168.1.$((9+$i)) &
done
