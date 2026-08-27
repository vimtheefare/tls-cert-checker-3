#!/bin/bash

# Configuration file for TLS Cert Checker

# Default timeout for certificate check in seconds
TIMEOUT=5

# Log file to record certificate expiry checks
LOGFILE="cert_check.log"

# Function to log messages
log_message() {
  echo "$(date '+%Y-%m-%d %H:%M:%S') - $1" >> "$LOGFILE"
}
