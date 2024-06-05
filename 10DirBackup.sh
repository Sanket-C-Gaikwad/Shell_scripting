#!/bin/bash

#use commad to check list of arguments passesd during true false statment

#Check whether the input is as per expectation

if [ $# -ne 2 ]; then

	echo "Usage: $0 source_dir backup_dir"
	exit 1
fi


source_dir=$1
backup_dir=$2

if [ ! -d "$source_dir" ]; then

	echo "Directory does not exist"
	exit 1                             #Exit code 1 denotes - error , 0 - success, usually helpful in big chain commands and conditional execution

fi

cp -r "$source_dir" "$backup_dir"

echo "Backup of $source_dir completed to $backup_dir"



