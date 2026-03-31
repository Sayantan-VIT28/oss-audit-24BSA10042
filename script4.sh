#!/bin/bash
# Script 4: Log File Analyzer
# Usage: ./log_analyzer.sh /var/log/syslog [keyword]

# Default to Ubuntu's main log file if none provided
LOGFILE=${1:-"/var/log/alternatives.log"}
KEYWORD=${2:-"error"}
COUNT=0
RETRIES=3

# Check if file exists (using sudo to verify visibility)
if [ ! -f "$LOGFILE" ]; then
    echo "Error: File $LOGFILE not found."
    echo "Tip: On Ubuntu, use /var/log/syslog instead of /var/log/messages"
    exit 1
fi

# Retry logic if file is empty
ATTEMPT=0
while true; do
    if [ -s "$LOGFILE" ]; then
        break
    fi
    ATTEMPT=$((ATTEMPT + 1))
    if [ "$ATTEMPT" -ge "$RETRIES" ]; then
        echo "Error: File $LOGFILE is empty after $RETRIES attempts."
        exit 1
    fi
    echo "File empty, retrying... ($ATTEMPT/$RETRIES)"
    sleep 1
done

# We use sudo to read the file because /var/log/syslog is restricted
# Reading line by line to count matches
while IFS= read -r LINE; do
    if echo "$LINE" | grep -iq "$KEYWORD"; then
        COUNT=$((COUNT + 1))
    fi
done < <(sudo cat "$LOGFILE")

echo "-----------------------------------------------"
echo "Keyword '$KEYWORD' found $COUNT times in $LOGFILE"
echo "-----------------------------------------------"

# Print last 5 matching lines
echo "Last 5 occurrences:"
sudo grep -i "$KEYWORD" "$LOGFILE" | tail -n 5
