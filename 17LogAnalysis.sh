#!/bin/bash


# Variables
LOG_FILE="/var/log/syslog"
ERROR_LOG="/var/log/error_log"

# Extract errors
grep -i "error" $LOG_FILE > $ERROR_LOG

echo "Log analysis complete. Errors saved to $ERROR_LOG."
