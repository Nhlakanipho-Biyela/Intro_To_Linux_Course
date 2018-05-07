











#!/bin/bash

mkdir images

echo "scraping abstruce goose files"
for i in {30..35}
do
	wget -nd -r -A jpeg,jpg,bmp,gif,png --directory-prefix=images http://abstrusegoose.com/5$i
done

echo "renaming abstruce goose images"
count=1
for image in $(ls images)
do
	mv images/$image images/$count.png
	((count++))
done

echo "copying files over to lab computers"
for i in {1..10}
do
	rcp -r images/ vmuser@10.100.14.$i:~/Music
	ssh vmuser@10.100.14.$i "echo 'echo \"We gave you abstruce goose goodness in Music images - you are welcome!\"' >> ~/.bashrc"
done
