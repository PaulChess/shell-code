#!/bin/bash
# display the date and who's logged on
echo -n "The time and date are: "
date

echo "Let's see who's logged into the system: "
who

# display user information from the systeom.
echo "User info for userid: $USER"
echo UID: $UID
echo HOME: $HOME

echo "The cost of the item is \$15"

# test receive output
date1=$(date)
echo $date1
date2=`date`
echo $date2

# copy the /usr/bin directory listing to a log file
# today=$(date +%y%m%d)
# ls /usr/bin -al > log.$today

logFileName=log.220607

date >> $logFileName
who >> $logFileName

wc < $logFileName

# wc << EOF
# > test string 1
# > test string 2
# > test string 3
# > EOF


# pipe
# cat $logFileName | more

# number calculate
expr 1 + 5

num1=100
num2=50
num3=45
num4=$[$num1 * ($num2 - $num3)]
echo The final Result is $num4

# use bc to deal float number calculate in shell
variable=$(echo "scale=4; $(num1) / 5" | bc)
echo The anwser is $variable