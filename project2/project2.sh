#!/bin/bash

#calculates disk free space
diskUse=$(df -h | grep '/dev/mapper/centos-root' | awk {'print $5'})
#variable to set disk usage alert percentage
alertUse=75%
#retrieves server hostname
server=$HOSTNAME
#enter your email below
emailaddress=kunkelad@ucmail.uc.edu

#if disk use is below 75%, an email is sent without warning
if [ ${diskUse%?} -lt ${alertUse%?} ]
then
        mailBody="Disk space on $server is OK. Your disk is at ${diskUse} capacity."
        mail -s "Disk Space OK" $emailaddress <<< $(echo -e $mailBody)
#if disk use is 75% or above, an email is sent with a warning
else
        mailBody="Disk space on $server is near max. Your disk is at ${diskUse} capacity."
        mail -s "Disk Space Alert!" $emailaddress <<< $(echo -e $mailBody)
fi
