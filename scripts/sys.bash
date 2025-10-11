#!/bin/bash
# sysinfo.sh - Display basic system information

echo "----------------------------------------"
echo "System Information"
echo "----------------------------------------"
echo "Current User : $(whoami)"
echo "Current Date : $(date)"
echo "Disk Usage   :"
df -h
echo "----------------------------------------"
