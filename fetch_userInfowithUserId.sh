#!/bin/bash
# Fetching country API was done while I was doing the assignment,
# hence i used jsonplaceholder and write script to fetch user Info.
if [[ $# -lt 1 ]]; then
	echo "Atleast One UserId [ex.1,2,3] is required!"
	exit 1
fi
for id in "$@";do
	url="https://jsonplaceholder.typicode.com/users/$id"
	response=$(curl -s "$url")

	name=$(echo "$response" | jq -r '.name')
	username=$(echo "$response" | jq -r '.username')
	email=$(echo "$response" | jq -r '.email')
	address=$(echo "$response" | jq -r '.address.street')
	city=$(echo "$response" | jq -r '.address.city')

	echo "Name:" $name
	echo "Username:" $username
	echo "Email:" $email
	echo "Address:" $address","$city
	echo 
done
