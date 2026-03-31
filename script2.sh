#!/bin/bash
# Script 2: FOSS Package Inspector (Ubuntu/Debian Version)

# Use the first argument provided ($1), or default to "nano"
PACKAGE=${1:-"nano"}

if [ -z "$PACKAGE" ]; then
    echo "Usage: $0 <package-name>"
    exit 1
fi

# Check if package is installed using dpkg-query (Ubuntu's way)
if dpkg-query -W -f='${Status}' "$PACKAGE" 2>/dev/null | grep -q "ok installed"; then
    echo "================================"
    echo "✔ $PACKAGE is installed(24BSA10042)."
    echo "================================"

    # Show package info (Version, License/Section, Description)
    # Ubuntu stores license info differently, so we pull Version and Description
    apt-cache show "$PACKAGE" | grep -E 'Version:|Section:|Description:' | head -n 3
else
    echo "❌ $PACKAGE is NOT installed."
    echo "Try: sudo apt install $PACKAGE"
    # We continue to show the philosophy even if not installed
fi

echo "--- Philosophy Note ---"
# Philosophy notes
case "$PACKAGE" in
    apache2 | httpd)
        echo "Apache: The web server that built the open internet."
        ;;
    mysql-server | mysql)
        echo "MySQL: Open source at the heart of millions of apps."
        ;;
    nginx)
        echo "Nginx: Performance-focused minimalism for the modern web."
        ;;
    firefox)
        echo "Firefox: Privacy-first browsing in a corporate web."
        ;;
    vlc)
        echo "VLC: If it exists, it plays it."
        ;;
    nano)
        echo "Nano: Simple, friendly, and the gateway to command-line editing."
        ;;
    *)
        echo "No philosophy note available for $PACKAGE."
        ;;
esac
echo "================================"
