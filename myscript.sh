#! /usr/bin/bash

#ECHO cmd
echo hello world!

#variable
#uppercase by convection
#letters,no. ,underscores

NAME="mohit jasper sunita richa"
echo "My name is $NAME"
#user input 
#read -p "Enter your name:" PUT
#echo "Hello $PUT"

#simple is stement
if [ "$NAME" == "MOHIT" ]
then
  echo "YOUR name is same as mine"
elif [ "$NAME" == "MOHI" ]
then
 echo "your name is moho"
else 
 echo "your name is not same"  
fi

#comparison

NUM1=8
NUM3=5

if [ "$NUM1" -gt "$NUM3" ]
then
 echo "num1 is grater than num3"
else
 echo "Num1 is lesser than num3" 
fi
 # file condition

FILE="test.txt"

if [ -f "$FILE" ]
then
 echo "$FILE is a file"
else 
 echo "$FILE is not a file"
fi  

read -p "are you 18 or over? [y/n]" ANSWER
case "$ANSWER" in
 
    [yY] | [yY][eE][sS])
        echo "You can have beer :)"
        ;;
    [nN] | [nN][oO])
        echo "no cant"
        ;;
    *)
        echo "please say y or n"
        ;;
esac    

 # FOR loop
NAMES="mohit jasper sunita richa"
for new in $NAMES
 do
   echo "HEllo $new"
done      
FILES=$(ls *.txt)
NEW='new'
for file in $FILES
 do
  echo "renaming $file to new-$file"
  mv $file $NEW-$file
done