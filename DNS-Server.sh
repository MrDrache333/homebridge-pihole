#!/bin/bash

if [ "$1" = "Get" ]; then
   # $2 would be the name 'DNS-Server'
   # $3 would be the charactersistic 'On'
   state=$(pihole status | grep -c Enabled)
   if [[ "$state" = "0" ]]; then
     echo "$state"
     exit 0
   elif [[ "$state" = "1" ]]; then
     echo "$state"
     exit 0
   fi
fi

if [ "$1" = "Set" ]; then
   # $2 would be the name 'DNS-Server'
   # $3 would be the the charactersistic 'On'
   # $4 would be '0' for 'Off', '1' for 'On'

   if [ "$4" = "0" ]; then
      pihole enable
      exit $?
   elif [ "$4" = "1" ]; then
      pihole disable
      exit $?
   fi
fi

exit -1
