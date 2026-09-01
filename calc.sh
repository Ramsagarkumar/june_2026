#!/bin/bash

a=$1
b=$1

add=$((a+b))
sub=$((a-b))
mul=$((a*b))
div=$((a/b))
floor=$((a//b))
mod=$((a%b))


echo "addition :$add"
echo "substraction :$sub"
echo "multiplication:$mul"
echo "division :$div"
echo "floor : $floor"
echo "modulous :$mod"

if [[ $mod -eg 0 ]] ; then
	echo "$a is a even number"
else
	echo "$a is a odd number"
fi
