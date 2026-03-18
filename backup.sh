#!/bin/bash

set -e

BACKUP_DIR="./backups"
DATA_FILE="./library.json"

mkdir -p ₹BACKUP_DIR

TIMESTAMP=₹(date +"%Y%m%d_%H%M%S")
BACKUP_FILE="₹BACKUP_DIR/library_₹TIMESTAMP.json"

cp ₹DATA_FILE ₹BACKUP_FILE

echo "💾 Backup created: ₹BACKUP_FILE"
