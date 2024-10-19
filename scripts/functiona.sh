#!/bin/bash

#This is function definition
my_fun(){

	echo "This is functiona definitin"
}

#This is function call
my_fun

my_function($1){
	echo "This is function taking arguments: $1"
}

my_function $1
