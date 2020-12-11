#!/bin/bash

read -p 'new vue component filepath:' filepath
if [ -z "$filepath" ]; then
	echo "filepath is null"
	exit 0
fi

read -p 'new vue component name:' componentname
if [ -z "$componentname" ]; then
    echo "componentname is null"
    
fi

filedata='<template>\n'
filedata=$filedata'\t<div>\n\n'
filedata=$filedata'\t</div>\n'
filedata=$filedata'</template>\n\n'
filedata=$filedata'<script>\n'
filedata=$filedata'export default {\n'
filedata=$filedata'\tname: "'$componentname'",\n'
filedata=$filedata'\tsetup () {\n'
filedata=$filedata'\t\treturn {\n\n'
filedata=$filedata'\t\t};\n'
filedata=$filedata'\t}\n'
filedata=$filedata'};\n'
filedata=$filedata'</script>\n\n'
filedata=$filedata'<style scoped>\n\n'
filedata=$filedata'</style>'
	
ext1=".vue"
has_ext1=$(echo $filepath | grep "${ext1}")
	
if [[ "$has_ext1" == "" ]]; then
	filepath="$filepath.vue"
fi
	
echo -e $filedata > $filepath
echo "new a vue component file!"
