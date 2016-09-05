#!/bin/bash
exec 1>gofuckyoulsef
who 
d=`date`
touch a.txt
echo "Current User : $USER"
echo "Current HOME : $HOME"
echo "today is $d"
if ls 
then echo "works"
fi
if [ 1 -lt 2 ] 
then
echo "yes 1 is less equal than 2"
fi
if [ ab = ab ]
then 
echo "ab is equals to ab"
fi
#if [ -d $HOME ] 
#then 
#echo '$HOME is directory'
#cd $HOME
#ls
#fi
if [[ $USER == roo* ]]
then 
echo "user start with root"
fi

case $USER in
admin | fuckoff) 
  echo "welcome admin or fuckoff";;
root)
  echo "welcome roo*";;
*)
  echo "welcome random guy";;
esac
V="I am a pig"
for v in $V
do 
echo "word:$v"
done

for v in I\'am so luck "you're" my mate
do
echo "go fuck yourself :$v"
done

for v in `ls` 
do 
echo "ls : $v"
done

#iterate all the file under root directory
#as the empty char is ok in the filename so we should add "" to the $file
for file in /root/*
do 
  if [ -d "$file" ]
  then 
    echo "$file is a directory"
  elif [ -f "$file" ]
  then 
    echo "$file is a file"
  fi
done

for((i = 0,j = 3 ;i < 10 ; i++,j-- ))
do 
  echo "i value is $i, j value is $j"
done

v=10
while echo "while value is $v" 
[ $v -gt 0 ]
do 
  echo $v
#i have to use $[] or v will not be decrement but equals to a string
  v=$[ $v - 1 ]
done 

var=10
until [ $var -eq 1 ]
do 
  echo $var
  var=$[ $var - 1 ]
done

#iterator /etc/passwd file content
# modify IFS value 
IFS=$'\n'
for entry in `cat /etc/passwd`
do
  echo "Values in $entry -"
#modify IFS value 
  IFS=:
  for value in $entry
  do 
    echo "   $value"
  done
done > output.txt

#comamnd line parameter 
echo "command line parameter usage : $1 $2"
#command line $0 using basename get the execute file name
echo "execute file name contians path is $0" 
v=`basename $0`
echo $v

#command param number
echo "command param number $#"

#$* & $@ 
for v in "$@"
do
  echo " '$@' param are $v"
done 

for vv in "$*"
do
  echo " '$*' param are $vv"
done

#shift command iterator command param 
# when we using $ we had better add "
#while [ -n "$1" ]
#do 
#  echo "value is $1"
#  shift
#done 

# simple parameter options
#while [ -n "$1" ]
#do 
#  case "$1" in 
#  -a) echo "Found the -a option";;
#  -b) echo "Found the -b option";;
#  -c) echo "Found the -c option";;
#  *) echo "$1 is not as expected option";;
#  esac
#  shift
#done

#divide option param and parameter with -- 

while [ -n "$1" ]
do 
  case "$1" in
  -a) echo "option param fetched -a";;
  -b) echo "option param fetched -b";;
  -c) echo "option param fetched -c";;
  --) shift
      echo "ready to break"
      break ;;
  *) echo "not an expected option";;
  esac 
  shift
done

for v in "$@"
do 
  echo "param fetched $v"
done

#read input stream 
#echo -n "Enter yourname: "
#read name
#echo "welcome $name to my house"

#if read -t 5 -p "Please enter your name : " name 
#then 
#echo "hello $name"
#else
#echo "sorry , timeout"
#fi

# make a error put it into stderr 
echo "this is a error made by clark" >&2


