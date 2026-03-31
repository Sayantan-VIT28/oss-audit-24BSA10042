#!/bin/bash
# Script 1: System Identity Report
# Author: Sayantan Das | Course: Open Source Software

# --- Variables ---
STUDENT_NAME="Sayantan Das_24BSA10042"
SOFTWARE_CHOICE="Linux Kernel"

# --- System info ---
KERNEL=$(uname -r)
USER_NAME=$(whoami)
UPTIME=$(uptime -p)
CURRENT_DATE=$(date +"%Y-%m-%d %H:%M:%S")

# Pulling Distro name from os-release
. /etc/os-release

# --- Display ---
echo "================================"
echo " Open Source Audit — $STUDENT_NAME"
echo "================================"
echo "Software Choice : $SOFTWARE_CHOICE"
echo "Kernel          : $KERNEL"
echo "User            : $USER_NAME"
echo "Uptime          : $UPTIME"
echo "Distro          : $NAME"
echo "Date            : $CURRENT_DATE"
echo "License         : This software is licensed under GNU GPL."
echo "================================"
