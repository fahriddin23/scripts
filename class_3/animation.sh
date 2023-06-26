#!/bin/bash
for i in $(seq 1 7);
do
	rand=$(shuf -i 2795-2796 -n 1)
	echo -en "   \u$rand"
	sleep 0.5 
done
echo " "