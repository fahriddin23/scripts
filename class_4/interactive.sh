#!/bin/bash

animation() {
for i in $(seq 1 5);
do
	rand=$(shuf -i 2795-2797 -n 1)
	echo -en "   \u$rand"
	sleep 0.5 
done }

echo " "
echo "-----------------------------"
echo "------<  CALCULATOR   >------ $animation"

addition() {
    echo "Enter the first number: "
    read num1
    echo "Enter the second number: "
    read num2
    result=$(($num1 + $num2))
    echo "The result of $num1 + $num2 is: $result"
}

subtraction() {
    echo "Enter the first number: "
    read num1
    echo "Enter the second number: "
    read num2
    result=$(($num1 - $num2))
    echo "The result of $num1 - $num2 is: $result"
}

multiplication() {
    echo "Enter the first number: "
    read num1
    echo "Enter the second number: "
    read num2
    result=$(($num1 * $num2))
    echo "The result of $num1 * $num2 is: $result"
}

division() {
    echo "Enter the dividend: "
    read num1
    echo "Enter the divisor: "
    read num2
    result=$(($num1 / $num2))
    echo "The result of $num1 / $num2 is: $result"
}

while true; do
    echo "-----------------------------"
    echo "Select an operation:"
    echo "1. Addition +"
    echo "2. Subtraction -"
    echo "3. Multiplication *"
    echo "4. Division /"
    echo "5. Exit"
    echo "-----------------------------"
    read -p "Enter your choice 1-5: " choice

    case $choice in
        1)
            addition
            ;;
        2)
            subtraction
            ;;
        3)
            multiplication
            ;;
        4)
            division
            ;;
        5)
            echo "Thanks for using the Calculator!"
            exit 0
            ;;
        *)
            echo "Invalid choice. Please try again."
            ;;
    esac
done