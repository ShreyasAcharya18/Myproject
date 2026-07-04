#!/bin/bash

echo "======================================================="
echo "     APPLICATION HEALTH CHECK"
echo "     By Shreyas - DevOps Journey"
echo "======================================================="
echo "Date: $(date)"
echo "Hostname: $(hostname)"
echo "Current User: $(whoami)"
echo ""
echo "Memory Usage:"
free -h | grep Mem
echo ""
echo "Disk Usage:"
df -h | grep -v tmpfs
echo ""
echo "Network Check:"
curl -s https://google.com > /dev/null
if [ $? -eq 0 ]
then
	echo "Internet is UP"
else
	echo "Internet is DOWN"
fi
echo "========================================================="
echo "Health Check Completed"
echo "========================================================="

