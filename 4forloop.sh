#!/bin/bash

for VARIABLE in $(cat list.txt); do
	echo "The text in the list are: $VARIABLE" 
done
