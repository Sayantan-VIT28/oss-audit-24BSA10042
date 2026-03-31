#!/bin/bash
# Script 5: Open Source Manifesto Generator
# Author: Sayantan Das

echo "==============================================="
echo "   OPEN SOURCE MANIFESTO GENERATOR(24BSA10042) "
echo "==============================================="

read -p "1. Name one open-source tool you use every day: " TOOL
read -p "2. In one word, what does 'freedom' mean to you? " FREEDOM
read -p "3. Name one thing you would build and share freely: " BUILD

DATE=$(date '+%d %B %Y')
USER_ID=$(whoami)
OUTPUT="manifesto_${USER_ID}.txt"

# --- Compose and Save the Manifesto ---
# We use > to create/overwrite and >> to append lines
echo "--- OPEN SOURCE MANIFESTO ---" > "$OUTPUT"
echo "Date: $DATE" >> "$OUTPUT"
echo "Author: $USER_ID" >> "$OUTPUT"
echo "" >> "$OUTPUT"

echo "I believe in the power of open collaboration. Every day, I rely on $TOOL" >> "$OUTPUT"
echo "to power my workflow. To me, open source represents $FREEDOM," >> "$OUTPUT"
echo "which is why I commit to building $BUILD and sharing it" >> "$OUTPUT"
echo "freely with the world for the benefit of all." >> "$OUTPUT"

echo ""
echo "========================================"
echo "✅ Manifesto saved to $OUTPUT"
echo "========================================"

# Display the final result
cat "$OUTPUT"
