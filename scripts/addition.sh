#!/bin/bash
#
#
#This script will take two variables and add them
#

num1=10
num2=12

sum=$(( num1+num2))

echo "sum is $sum"


#Lets two numbers as arguments and add them
#
arg1=$1
arg2=$2

sum=$((arg1+arg2))

echo "Sum of arguments provided is $sum"
