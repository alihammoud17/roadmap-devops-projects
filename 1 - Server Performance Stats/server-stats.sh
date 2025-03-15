#!/bin/bash

# Get total CPU usage
CPU_USAGE=$(grep 'cpu ' /proc/stat | awk '{usage=($2+$4)*100/($2+$4+$5)} END {print usage "%"}')

# Get total memory usage
MEMORY=$(free -m | awk '/Mem:/ {printf "%dMB used / %dMB total (%.2f%%)", $3, $2, $3*100/$2}')

# Get total disk usage
DISK=$(df -h --total | awk '/total/ {printf "%s used / %s total (%s)", $3, $2, $5}')

# Get top 5 processes by CPU usage
TOP_CPU=$(ps -eo pid,comm,%cpu --sort=-%cpu | head -6)

# Get top 5 processes by memory usage
TOP_MEM=$(ps -eo pid,comm,%mem --sort=-%mem | head -6)

# Output the results
echo "================ System Usage Report ================"
echo "Total CPU Usage: $CPU_USAGE"
echo ""
echo "Memory Usage: $MEMORY"
echo ""
echo "Disk Usage: $DISK"
echo ""
echo "Top 5 Processes by CPU Usage:"
echo "$TOP_CPU"
echo ""
echo "Top 5 Processes by Memory Usage:"
echo "$TOP_MEM"
echo "======================================================="