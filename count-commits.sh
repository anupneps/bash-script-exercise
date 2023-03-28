#!/bin/bash
# Printing out message if there is missing arguments
if [[ $# -lt 1 ]]; then
	echo "Please provide a directory to a code repository !!"
	exit 1
fi
# check if the provided argument is git repo or not
if [ -d "$1/.git" ]; then 
	cd "$1"
else
	echo "This is not a valid git repo"
fi
# checking for author name in argrument
if [[ $# -gt 1 ]]; then
	author=$(printf "%s\\|" "${@:2}")
	author=${author%\\|}
	git log --format='%aN' | grep -E "$author" | sort | uniq -c | sed -E 's/\s*([0-9]+)\s(.+)/\2-\1/'
else
	git log --format='%aN' | sort | uniq -c |sed -E 's/\s*([0-9]+)\s(.+)/\2-\1/'
fi

