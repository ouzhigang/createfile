#!/bin/bash

read -p 'new python filepath:' filepath

if [ -z "$filepath" ]; then
    echo "filepath is null"
else
	filedata='#!/usr/bin/python3\n\n'    
	filedata=$filedata'import os, sys\n\n'
	filedata=$filedata'if __name__ == "__main__":\n\n'
	filedata=$filedata'\tprint("Hello python!")'
	
	ext1=".py"
	has_ext1=$(echo $filepath | grep "${ext1}")
	
	if [[ "$has_ext1" == "" ]]; then
		filepath="$filepath.py"
	fi
	
	echo -e $filedata > $filepath
	echo "new a python file!"
fi
