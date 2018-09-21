#!/bin/sh

for i in 1 2 3
do 
	echo "Current Number: $i" 
done

echo "-"

for i in This is a loop writing something
do
	echo $i
done

echo "-"

echo "Files list: "
for i in *
do
  echo $i
done
