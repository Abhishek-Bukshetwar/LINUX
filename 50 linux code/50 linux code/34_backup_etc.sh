#!/bin/bash
timestamp=$(date +"%Y%m%d_%H%M%S")
backup_dir="/backup/etc_$timestamp"
mkdir -p "$backup_dir"
cp -r /etc/* "$backup_dir"
echo "Backup completed at $backup_dir"
