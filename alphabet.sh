#!/bin/bash

 #check for argument
 if [ $# -lt 1 ]; then
    echo "Usage: $0 <Your sentence here>"
    echo "Example: $0 sandeep,ravinder"
    exit 1
 fi 



 str="$*"
 vowels="$(echo "$str"|grep -oi [aeiou])"
 count="$(echo "$vowels"|wc -1)"
 vowels="$(echo "$vowels"|tr "\n" ",")"

 echo "'$str' has $count vowels."
 echo -e "They are:\n$vowels"
