#!/bin/bash

<<note

This scripts will take backup

note

timestamp=$(date '+%d-%m-%Y_%H:%M:%S')

backup_dir="/home/ubuntu/backup/${timestamp}_backup.zip"

echo "$backup_dir"

function create_backup {
	zip -r $backup_dir $1
	echo "Backup taken successful"

}

create_backup $1
