#!/bin/bash

DISK_USAGE=$(df / | grep / | awk '{ print $5 }' | sed 's/%//g')

if [ "$DISK_USAGE" -gt 80 ]; then
  echo "Disk usage is above 80%. Current usage: $DISK_USAGE%" | mail -s "Disk Usage Alert" admin@example.com
fi

