#!/bin/sh

DIR=$PWD/Render
for i in $( ls *.svg); do
	    newName=`echo $i | awk -F "." '{print $1}'`
	    inkscape --export-png=$DIR/$newName.png $i
        done

