#!/bin/bash

echo "============================================="
echo "        Log Analyzer Report"
echo "  By Shreyas DevOps Journey"
echo "============================================="
logfile="/var/log/syslog"
echo " Total log lines:"
wc -l < $logfile
echo ""
echo "Error count:"
grep -i "error" $logfile | wc -l
echo ""
echo "Warning count:"
grep -i "warning" $logfile | wc -l
echo ""
echo "Last five log entries:"
tail -5 $logfile
echo "=============================================="
echo " Date $(date)"
echo "=============================================="

