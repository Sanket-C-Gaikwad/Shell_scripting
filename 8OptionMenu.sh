#!/bin/bash

echo "please select"

choice="Meal Drink"

select Option in $choice; do

	echo "You selected: $REPLY"
	echo "You selected: $Option"
	exit 0

done
