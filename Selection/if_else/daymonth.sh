#!/bin/bash -x
date=`date "+%m%d"`

if [ $date -gt 0320 ] && [ $date -lt 620 ]
then
echo "$month $date true"
else
echo "false"
fi
