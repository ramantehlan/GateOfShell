#!/bin/sh

input_string=hello 

# With a condition
while [ "$input_string" != "bye" ]
do
	echo "Please type something: (bye to exit)"
	read input_string
	echo "you typed $input_string"
done

# without a condition, since : is always true
while :
do 
	echo "Please type something: (^C to quit)"
	read input_string
	echo "you typed $input_string"
done


