#!/bin/bash

read -p 'new html filepath:' filepath

if [ -z "$filepath" ]; then
    echo "filepath is null"
else
	filedata='<!DOCTYPE html>\n'
	filedata=$filedata'<html lang="en">\n'
	filedata=$filedata'\t<head>\n'
	filedata=$filedata'\t\t<meta charset="UTF-8" />\n'
	filedata=$filedata'\t\t<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />\n'
	filedata=$filedata'\t\t<meta http-equiv="content-type" content="text/html; charset=utf-8" />\n'
	filedata=$filedata'\t\t<meta name="keywords" content="" />\n'
	filedata=$filedata'\t\t<meta name="description" content="" />\n'
	filedata=$filedata'\t\t<title>new html file</title>\n'
	filedata=$filedata'\t</head>\n'
	filedata=$filedata'\t<body>\n'
	filedata=$filedata'\t\t<div>Hello html5!</div>\n'
	filedata=$filedata'\t</body>\n'
	filedata=$filedata'</html>'
	
	ext1=".html"
	ext2=".htm"
	has_ext1=$(echo $filepath | grep "${ext1}")
	has_ext2=$(echo $filepath | grep "${ext2}")
	
	if [[ "$has_ext1" == "" ]] && [[ "$has_ext2" == "" ]]; then
		filepath="$filepath.html"
	fi
	
	echo -e $filedata > $filepath
	echo "new a html file!"
fi
