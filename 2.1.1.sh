#!/bin/sh


echo "Hello $name, welcome to the shell!"
echo "Let's start with your name?"
read name
echo "Nice to meet you $name! I will create a file for the name './tmp/${name}_data'"
touch "./tmp/${name}_data"