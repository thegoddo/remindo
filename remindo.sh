#! /bin/sh
#

message=$2
given_time=`date -d "$1" +%s`

current_time=`date +%s`

diffrence=`expr $given_time \- $current_time`

if [[ $current_time -gt  $given_time ]]; then
   notify-send "Error!!!" "Give me a future time" 

elif [[ "$given_time" -gt "$current_time" ]]; then
  sleep $diffrence
  notify-send "It is `date +"%H:%M"`" "$2"
fi


