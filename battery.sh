#!/bin/bash 

remains=$(/usr/bin/pmset -g ps | tail -1 | awk '{print $3}' | sed 's/%;//')

if [[ remains -lt 50 ]] ; then
  terminal-notifier -title "バッテリー残量警告" -subtitle "バッテリー残量が減っています。" -message "残: ${remains}%" -sound default
fi 

