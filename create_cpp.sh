#!/bin/bash

read -p 'new cpp filepath:' filepath

if [ -z "$filepath" ]; then
    echo "filepath is null"
else
	filedata='#include <iostream>\n\n'    
	filedata=$filedata'using namespace std;\n\n'
	filedata=$filedata'int main()\n'
	filedata=$filedata'{\n'
	filedata=$filedata'\tcout << "Hello, world!" << endl;\n'
	filedata=$filedata'\treturn 0;\n'
	filedata=$filedata'}'
	
	ext1=".cpp"
	has_ext1=$(echo $filepath | grep "${ext1}")
	
	if [[ "$has_ext1" == "" ]]; then
		filepath="$filepath.cpp"
	fi
	
	echo -e $filedata > $filepath
	echo "new a cpp file!"
fi
