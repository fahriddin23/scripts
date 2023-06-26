##Generate a random emoji 4 times.

for i in $(seq 1 4);
do
	rand=$(shuf -i 2600-2700 -n 1)
	echo -en "   \u$rand"
	sleep 0.5 
done
echo " "