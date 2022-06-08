#!/bin/bash
if pwd; then
  echo "It worked"
fi

variable="variable"

# test command
if test $variable = "variable"; then
  echo "Result: true!"
else
  echo "Result: false!"
fi

# Using numeric test evaluations
num1=11
num2=12

if [ $num1 -eq $num2 ]; then
  echo "The values are equal"
else
  echo "The values are diffrent"
fi

# compare string
str1=baseball
str2=hockey

if [ $str1 \> $str2 ]; then
  echo "$str1 is greater than $str2"
else
  echo "$str1 is less than $str2"
fi


str3=testing
str4=''

if [ -z $str4 ]; then
  echo "The string '$str4' is empty"
else
  echo "The string '$str4' is not empty"
fi

# Check if either a directory or file exists
location=~/Desktop/Home/learning/1990-script
file_name="README.md"
file_path=$location/$file_name

# if [ -e $location ]; then
#   echo "OK on the $location history."
#   echo "Now checking on the file, $file_name."
#   if [ -e $file_path ]; then
#     echo "OK on the filename."
#     echo "Updating Current Date..."
#     date >> $file_path
#     cat $file_path
#   else
#     echo "File does not exist."
#     echo "Nothing to update."
#   fi
# else
#   echo "The $location directory does not exist."
#   echo "Nothing to update."
# fi

if [ -f $file_path ]; then
  # now test if you can read it
  if [ -r $file_path ]; then
    echo "Successfully read !!"
    tail $file_path
  else
    echo "Sorry, I am unable to read the $file_path file"
  fi
else
  echo "Sorry, the file $file_path does not exist"
fi

# Using double parenthesis
a1=10
if (( $a1 ** 2 > 90 )); then
  (( a2 = $a1 ** 2 ))
  echo "The square of $a1 is $a2"
fi


# using pattern matching
if [[ $USER == sh* ]]; then
  echo "Hello $USER"
else
  echo "Sorry, I do not know you."
fi

# case syntax
case $USER in
shenjiaqi | paulchess)
  echo "Welcome, $USER"
  echo "Please enjoy your visit";;
testing)
  echo "Special testing account.";;
jessica)
  echo "Do not forget to log off when you're done";;
*)
  echo "Sorry, you are not allowed here.";;
esac