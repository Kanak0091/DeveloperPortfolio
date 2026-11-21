#!/bin/bash
# Author: Kanak (Kanak0091)
# Description: Displays a formatted system information report.

echo "=================================================="
echo "Name: Kanak | Roll No: 123456 | Date: $(date)"
echo "=================================================="

CPU_MODEL=$(lscpu | grep "Model name:" | sed -r 's/Model name:\s+//')
CPU_CORES=$(nproc)
echo "CPU Model  : $CPU_MODEL"
echo "CPU Cores  : $CPU_CORES"

MEM_INFO=$(free -h | awk '/^Mem:/ {print "Total: " $2 " | Used: " $3}')
echo "Memory     : $MEM_INFO"

echo "--------------------------------------------------"
echo "Top 3 Processes by CPU Usage:"
ps -eo pid,comm,%cpu --sort=-%cpu | head -n 4
echo "=================================================="
echo "Report generated successfully."
