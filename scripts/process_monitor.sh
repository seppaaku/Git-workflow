#!/bin/bash
# Description: Lists top CPU/memory consuming processes
# Usage: ./process_monitor.sh [number_of_processes]

COUNT=${1:-5}

echo "=== Top $COUNT processes by CPU usage ==="
ps -eo pid,comm,%cpu,%mem --sort=-%cpu | head -n $((COUNT + 1))

echo ""
echo "=== Top $COUNT processes by memory usage ==="
ps -eo pid,comm,%cpu,%mem --sort=-%mem | head -n $((COUNT + 1))
