#!/bin/bash

# Check if the input file is provided
if [ $# -ne 1 ]; then
    echo "Usage: $0 input_file"
    exit 1
fi

input_file=$1
output_file="emails_extracted.txt"

# Extract email addresses and save them to the output file
grep -E -o "[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,6}" "$input_file" > "$output_file" | cat "$output_file"

