#!/bin/bash

read -p 'new java package name:' packagename
if [ -z "$packagename" ]; then
    echo "packagename is null"
    exit 0
fi

read -p 'new java class name:' classname
if [ -z "$classname" ]; then
    echo "classname is null"
    exit 0
fi

read -p 'save dir:' dirpath
if [ -z "$dirpath" ]; then
    dirpath="."
fi

filedata='package '$packagename';\n\n'
filedata=$filedata'public class '$classname' {\n\n'
filedata=$filedata'}'

echo -e $filedata > $dirpath'/'$classname'.java'

echo "new a java class file!"
