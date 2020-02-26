#!/bin/bash

# Reading data from the user's input
# Echoing messages for input by user (read) at the command line

echo 'Enter a : '
read a
echo 'Enter b : ' 
read b
echo 'Enter c : '
read c

#using input data from user to compute
add=$[a + b]
echo Addition of a and b are $add

#calling variables after defining them for different computations

sub=$[a-b]
echo Subtraction of a and b are $sub

mul=$[a*b]
echo Multiplication of a and b are $mul

div=$[a/b]
echo division of a and b are $div

mod=$[a%b]
echo Modulus of a and b are $mod

((++a))
echo 'Increment operator when applied on "a" results into a = $a'

((--b))
echo 'Decrement operator when applied on "b" results into b = $b'

((--c))
echo 'What was the default value \ of "c" if its value is now $c\?'

exit 0
