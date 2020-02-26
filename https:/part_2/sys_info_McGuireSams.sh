 #! /bin/bash

#calling variables with added message, appending to .log file
now=$(date +"%T")
echo "Current time : $now" >> sys_info.log

#using awk to only print the first column of information. exclude extraneous da$
echo "List of all logged-in Users : " >> sys_info.log
echo "$(who -a | awk '{print $1}')" >> sys_info.log

#call variables to print system data
TODAY=$(date)
HOST=$(hostname)
echo "Date: $TODAY      Host:$HOST" >> sys_info.log

#for host uptime information
echo "System uptime : " >> sys_info.log
echo "$(uptime)" >> sys_info.log 

#write script that upon invocation populates appropriately named variables with
# 1. time and date 2. list of all logged-in users and 3. the system uptime
# the script then writes content of these variables to output/log file in appro$
# When script runs & performs as expected, run it a second time ~1hr later, app$
#to previous output/log file
#stage and commit this script and output/log file to Git
