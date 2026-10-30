#!/bin/sh

LOG="$HOME/soc-portfolio-project/logs/auth.log"

if [ ! -f "$LOG" ]; then
    echo "ERROR: Authentication log not found"
    exit 1
fi

echo "=== SOC AUTHENTICATION ANALYSIS ==="

echo ""
echo "Failed SSH attempts:"
grep -c "Failed password" "$LOG"

echo ""
echo "Successful SSH logins:"
grep "Accepted password" "$LOG"

echo ""
echo "Source IP addresses:"
grep -E "Failed password|Accepted password" "$LOG"
