#!/bin/sh

x=5

while [ $x -le 10 ]
do
	echo "x is "$x
	x=$(($x+1))
done
