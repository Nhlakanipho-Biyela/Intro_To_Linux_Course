#!/bin/bash

for i in {1..100}
do
	wget --directory-prefix=/home/ash/Documents/Intro_To_Linux/Lecture_Slides/Scripting_Lecture/examples/xkcd  https://xkcd.com/$i/

#	wget --directory-prefix=/home/ash/Documents/Intro_To_Linux/Lecture_Slides/Scripting_Lecture/examples/wikipedia https://en.wikipedia.org/wiki/Special:Random
done
