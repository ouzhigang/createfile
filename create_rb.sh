#!/bin/bash

read -p 'new ruby filepath:' filepath

if [ -z "$filepath" ]; then
    echo "filepath is null"
else
	filedata='#!/usr/bin/ruby\n\n'    
	filedata=$filedata'puts "Hello, Ruby!"'
	
	ext1=".rb"
	has_ext1=$(echo $filepath | grep "${ext1}")
	
	if [[ "$has_ext1" == "" ]]; then
		filepath="$filepath.rb"
	fi
	
	echo -e $filedata > $filepath
	echo "new a ruby file!"
fi
