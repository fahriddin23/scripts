#!/bin/bash

echo "-- Script to create linux users --"

for i in $(seq 1 5);
do
	rand=$(shuf -i 2600-2700 -n 1)
	echo -en "   \u$rand"
	sleep 0.5 
done
echo " "

read -p "How many users: " user_ct

if [ $user_ct -gt 1 ]; then
    echo "Creating multiple users"
    for user in $(seq 1 $user_ct); do
    read -p "Enter username: " username
    read -sp "Enter password: " password
    useradd $username -p $password -u $uid -c "User created through script"
done

elif [ $user_ct -eq 1 ]; then
    echo "Creating single user"
    read -p "Enter username: " username
    read -sp "Enter password: " password
    useradd $username -p $password -u $uid -c "User created through script"

else 
    echo "Wrong input. Try again"
fi




