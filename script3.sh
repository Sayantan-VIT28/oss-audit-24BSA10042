#!/bin/bash
# Script 3: Disk and Permission Auditor
# Author: Sayantan Das

DIRS=("/etc" "/var/log" "/home" "/usr/bin" "/tmp")

echo "==============================================="
echo "      DIRECTORY AUDIT REPORT (EC2)(24BSA10042) "
echo "==============================================="
printf "%-12s | %-20s | %-10s\n" "Directory" "Perms/Owner" "Size"
echo "------------------------------------------"

for DIR in "${DIRS[@]}"; do
    if [ -d "$DIR" ]; then
        # Capture Permissions, Owner, and Group
        PERMS=$(ls -ld "$DIR" | awk '{print $1 " " $3 ":" $4}')
        
        # Capture Size (using sudo to avoid "Permission Denied")
        SIZE=$(sudo du -sh "$DIR" 2>/dev/null | cut -f1)
        
        # If SIZE is empty (e.g., if sudo fails), mark as Access Denied
        if [ -z "$SIZE" ]; then SIZE="Locked"; fi

        printf "%-12s | %-20s | %-10s\n" "$DIR" "$PERMS" "$SIZE"
    else
        echo "$DIR => [NOT FOUND]"
    fi
done
echo "=========================================="
