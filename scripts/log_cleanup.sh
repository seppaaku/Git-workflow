#!/bin/bash
# Description: Safely removes .log files older than 7 days
# Usage: ./log_cleanup.sh [/path/to/logs]

LOG_DIR=${1:-/var/log}

if [ ! -d "$LOG_DIR" ]; then
  echo "Error: $LOG_DIR does not exist"
  exit 1
fi

find "$LOG_DIR" -name "*.log" -mtime +7 -delete
echo "Old log files removed from $LOG_DIR"
