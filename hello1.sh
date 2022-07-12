#!/bin/bash
lname=${2-"altname"}
echo $lname

for u in bob joe ; do
echo $u
done

for f in * ; do
echo $f
done


source $HOME/snippets/color
read -p "Hello $(basename $0) may I ask your name: " name
echo -e "${RED}HELLO $name \n"
echo -e $#
test -z $name || echo "Hello $name"
test $PWD == ~/bin || cd ~/bin
ls -la
read -s -n1 -p "press any key to exit"
echo
exit 0