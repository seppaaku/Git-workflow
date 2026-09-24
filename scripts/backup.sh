#!/bin/bash
# Description: Creates a compressed backup of a target directory
# Usage: ./backup.sh <source_dir> <destination_dir>

SOURCE=$1
DEST=$2
TIMESTAMP=$(date +%Y%m%d_%H%M%S)

if [ -z "$SOURCE" ] || [ -z "$DEST" ]; then
  echo "Usage: ./backup.sh <source_dir> <destination_dir>"
  exit 1
fi

if [ ! -d "$SOURCE" ]; then
  echo "Error: source directory does not exist"
  exit 1
fi

mkdir -p "$DEST"
tar -czf "$DEST/backup_$TIMESTAMP.tar.gz" "$SOURCE"
echo "Backup created: $DEST/backup_$TIMESTAMP.tar.gz"
