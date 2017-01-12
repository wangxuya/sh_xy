#########################################################################
# File Name: rm_houzhui.sh
# Author: wxy
# mail: wangxuya1991@163.com
# Created Time: Thu 12 Jan 2017 10:17:46 PM CST
#########################################################################
#!/bin/bash
echo '$'1 is $1
if [ "$1"x = x ]
then
	echo please input the '$'1
	exit 8
fi
echo ##############
rm *$1*
echo "rm *$1*"
for file in ./*
do
	if test -d $file
	then
		cd $file
        rm *$1*
		echo "dir is $file"
		echo "real dir is thr pwd is "`pwd`
		echo "rm *$1*"
		cd ../
	fi
done
