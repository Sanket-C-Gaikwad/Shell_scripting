#!/bin/bash

echo "Please enter your user name:"
read NAME

if [ $NAME = "Sanket" ]; # spacing indentation is important inside the if statement
then
    echo "Welcome Sanket"
else
    echo "Invalid user name, Please register an account"
fi
