#!/bin/bash

#simple pingsweep use : man ping

echo "Please enter the subnet:"

#Enter subnet e.g 458.258.189
read SUBNET 

for IP in $(seq 1 254); do   #sequence 1 to 254

	ping -c  1 $SUBNET.$IP

done




