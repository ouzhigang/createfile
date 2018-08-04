#!/bin/bash

read -p 'new c filepath:' filepath

if [ -z "$filepath" ]; then
    echo "filepath is null"
else
	filedata='#include <stdio.h>\n\n'    
	filedata=$filedata'int main()\n'
	filedata=$filedata'{\n'
	filedata=$filedata'\tprintf("Hello, World! \\n");\n'
	filedata=$filedata'\treturn 0;\n'
	filedata=$filedata'}'
	
	ext1=".c"
	has_ext1=$(echo $filepath | grep "${ext1}")
	
	if [[ "$has_ext1" == "" ]]; then
		filepath="$filepath.c"
	fi
	
	echo -e $filedata > $filepath
	echo "new a c file!"
fi
