#!/bin/sh

for i in 1 2 "cat" 4
do
	echo "i is "$i
done


for i in {1..10}
do
	echo "second loop i "$i
done

for i in {1..3} "cat" {4..6}
do
	echo "third loop i "$i
done

for i in $@
do
	echo "forth  for loop "$i
done

for ((i=1; i<=5; i++))
do
	echo "woohoo normal for loop "$i
done

for i in $(ls)
do
	echo "this file is in this directory "$i
done

for file in /etc/*
do
	echo "this file is in etc "$file
done
