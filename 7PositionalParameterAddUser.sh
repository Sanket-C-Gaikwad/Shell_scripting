#!/bin/bash

# positional parameter number starts from 0 to 9, but 0 is given to script itself.
# ./7PositionalParameterAddUser.sh user1 
# chmod 775 ./7PositionalParameterAddUser.sh

echo "Execution of script:$0"

echo "Please enter number of users:$1"


adduser --home /$1 $1

