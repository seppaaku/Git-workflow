#!/bin/bash
# Description: Alerts if disk usage exceeds a given threshold
# Usage: ./check_disk_usage.sh [threshold_percent]

THRESHOLD=${1:-80}
USAGE=$(df / | tail -1 | awk '{print $5}' | sed 's/%//')

if [ "$USAGE" -ge "$THRESHOLD" ]; then
  echo "WARNING: Disk usage is at ${USAGE}% (threshold: ${THRESHOLD}%)"
  exit 1
else
  echo "OK: Disk usage is at ${USAGE}%"
fi
