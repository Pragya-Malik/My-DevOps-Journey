#!/bin/bash


<<comment
This is a script for backup with 5 days rotations

usage:
./backup.sh <path to your source> <path to backup folder>
comment

display_usage() {
        echo "Usage:./backup.sh <path to your source> <path to backup folder>"
}

if [ $# -eq 0 ]; then
        display_usage
fi


source_dir=$1
timestamp=$(date '+%Y-%m-%d-%H-%M-%S')           #-> this is for formating the date
backup_dir=$2
 
create_backup() {

	zip -r "${backup_dir}/backup_${timestamp}.zip" "${source_dir}" > /dev/null
	if [ $? -eq 0 ]; then               # $? -> means pichli command (just previous command)
		 echo "backup generated successfully for ${timestamp}"
	fi
}

perform_rotation(){
	backups=($(ls -t "${backup_dir}/backup_"*.zip 2>/dev/null))

	if [ "${#backups[@]}" -gt 5 ]; then
		echo "Performing rotation for 5 days.."

		backups_to_remove=("${backups[@]:5}")

		for backups in "${backups_to_remove[@]}";
		do
			rm -f ${backups}
		done
	fi
}

create_backup
perform_rotation
