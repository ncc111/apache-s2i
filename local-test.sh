#!/bin/bash

# Name of the log file where script output will be saved
LOGFILE="/opt/app-root/src/logs/build-post-commit.log"

# Print the current date and time to the log file
echo "Build post-commit hook executed on $(date)" >> $LOGFILE

# Check if the application directory exists
if [ -d "/opt/app-root/src" ]; then
    echo "Application directory exists." >> $LOGFILE
else
    echo "Application directory does not exist. Exiting." >> $LOGFILE
    exit 1
fi
