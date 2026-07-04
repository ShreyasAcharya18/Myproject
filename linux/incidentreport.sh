#!/bin/bash

echo "============================================"
echo "  INCIDENT REPORT GENERATOR"
echo " By Shreyas - DevOps Journey"
echo "============================================"
echo "Enter Incident ID:"
read incident_id
echo "Enter issue Description"
read description
echo "Enter Severity (High/Medium/Low):"
read severity
report="incident_$incident_id.txt"
echo "==============================" >> $report
echo "Incident ID: $incident_id" >> $report
echo "Description: $despription" >> $report
echo "Severity: $severity" >> $report
echo "Reported By Shreyas" >> $report
echo "Date: $(date)" >> $report
echo "=============================================" >> $report
echo ""
echo "Report Generated: $report"
cat $report
