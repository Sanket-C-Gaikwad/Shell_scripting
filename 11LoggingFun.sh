#!/bin/bash

#echo "Logs of Date and time" >> $2

log_file=$2

#Function to log a message

logging() {

	echo "$(date +'%Y-%m-%d %H:%M:%S') - $1" >> $log_file 

}

#error handling

if [ $# -ne 2 ]; then

	echo "The correct usage: $0 File log_file"
	exit 1
fi

if [ ! -f $1 ]; then

	echo "File $1 does not exit"
	exit 1
fi

logging "The file $1 is processed and logs have been stored in $log_file"
cat $log_file