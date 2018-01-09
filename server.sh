#!/bin/bash

line1=`head -1 /dev/stdin`

method=`echo $line1|cut -d' ' -f1`
path=`echo $line1|cut -d' ' -f2`
http_version=`echo $line1|cut -d' ' -f3`

echo $method | grep -q '<\GET\>'
if [ $? ]
then
    source http_handler.sh
    handle_get $path
fi

