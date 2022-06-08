#!/bin/bash
for test in A B C D E F G; do
  echo current state is $test
done


# loop list from variables
list="A B C D E F G"
list=$list" H"
for test in $list; do
  echo have you visited $test?
done

# loop list from commands result
file=./assets/states

# ? edit IFS
IFS.OLD=$IFS
IFS=$'\n'

for state in $(cat $file); do
  echo "Visit beautiful $state"
done

# reset IFS
IFS=$IFS.OLD