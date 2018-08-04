#!/bin/bash

read -p 'new cpp class name:' classname
if [ -z "$classname" ]; then
    echo "classname is null"
    exit 0
fi

read -p 'save dir:' dirpath
if [ -z "$dirpath" ]; then
    dirpath="."
fi

#头文件
defname=$(echo $classname | tr 'a-z' 'A-Z')

h_filedata='#ifndef __'$defname'__\n'
h_filedata=$h_filedata'#define __'$defname'__\n\n'
h_filedata=$h_filedata'#include <iostream>\n\n'    
h_filedata=$h_filedata'class '$classname'\n'
h_filedata=$h_filedata'{\n'
h_filedata=$h_filedata'public:\n'
h_filedata=$h_filedata'\t'$classname'();\n'
h_filedata=$h_filedata'\tvirtual ~'$classname'();\n'
h_filedata=$h_filedata'};\n'
h_filedata=$h_filedata'#endif'

echo -e $h_filedata > $dirpath'/'$classname'.h'
#头文件 end

#cpp文件
cpp_filedata='#include "'$classname'.h"\n\n'
cpp_filedata=$cpp_filedata'using namespace std;\n\n'
cpp_filedata=$cpp_filedata$classname'::'$classname'()\n'
cpp_filedata=$cpp_filedata'{\n\n'
cpp_filedata=$cpp_filedata'}\n\n'
cpp_filedata=$cpp_filedata$classname'::~'$classname'()\n'
cpp_filedata=$cpp_filedata'{\n\n'
cpp_filedata=$cpp_filedata'}'
echo -e $cpp_filedata > $dirpath'/'$classname'.cpp'
#cpp文件 end

echo "new a cpp class!"
