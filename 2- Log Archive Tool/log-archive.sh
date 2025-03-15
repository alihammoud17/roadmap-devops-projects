#!/bin/bash

# Check if the user provided a directory argument
if [ -z "$1" ]; then
    echo "Usage: $0 <log-directory>"
    exit 1
fi

LOG_DIR="$1"
ARCHIVE_DIR="$LOG_DIR/log-archives"
TIMESTAMP=$(date +"%Y%m%d_%H%M%S")
ARCHIVE_NAME="logs_archive_${TIMESTAMP}.tar.gz"
ARCHIVE_PATH="$ARCHIVE_DIR/$ARCHIVE_NAME"
LOG_FILE="$ARCHIVE_DIR/archive_log.txt"

# Ensure the log directory exists
if [ ! -d "$LOG_DIR" ]; then
    echo "Error: The directory '$LOG_DIR' does not exist."
    exit 1
fi

# Create archive directory if it doesn't exist
mkdir -p "$ARCHIVE_DIR"

# Compress logs
tar -czf "$ARCHIVE_PATH" -C "$LOG_DIR" .

# Log the archive creation
echo "Archived logs at $TIMESTAMP -> $ARCHIVE_NAME" >> "$LOG_FILE"

echo "Logs archived successfully: $ARCHIVE_PATH"