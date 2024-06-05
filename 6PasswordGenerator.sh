#!/bin/bash

echo "This is a simple Password Generator"

echo "Enter length of password:"

read PASS_LENGTH

for VAR in $(seq 1 10); do

	# base 64 characters  48-char are cut in column 1 for input length (or -hex)
	# cut columns 1 character to 10th char: cuts -c1-10 
	openssl rand -base64 48 | cut -c1-$PASS_LENGTH

done


