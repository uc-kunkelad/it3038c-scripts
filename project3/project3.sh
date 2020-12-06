#!/bin/bash

#calculates disk free space
diskUse=$(df -h | grep '/dev/mapper/centos-root' | awk {'print $5'})

#calculates cpu usage
cpuUse=$(cat /proc/loadavg | awk '{print $1}')

#shows logged in users
loggedIn=$(who)

#shows status of services
firewall=$(systemctl show -p ActiveState firewalld)
ssh=$(systemctl show -p ActiveState sshd)
sssd=$(systemctl show -p ActiveState sssd)
apache=$(systemctl show -p ActiveState apache)
cron=$(systemctl show -p ActiveState crond)
samba=$(systemctl show -p ActiveState samba)

#shows disk errors
check=$(sudo badblocks -sv -o /var/log/badblocks.log /dev/sda)

#variable to set disk usage alert percentage
alertUse=75%

#retrieves server hostname
server=$HOSTNAME

#enter your email below
emailAddress=kunkelad@ucmail.uc.edu

#if disk use is below 75%, an email is sent without warning
if [ ${diskUse%?} -lt ${alertUse%?} ]
then
        mailBody="Disk space on $server is OK. Your disk is at ${diskUse} capacity.
                 Your CPU usage is currently at $cpuUse%.
                 The following users are currently logged into your system: $loggedIn.
                 The firewall status is $firewall.
                 sssd status is $sssd.
                 sshd status is $ssh.
                 apache status is $apache.
                 samba status is $samba.
                 crond status is $cron.
                 Run the script manually to check for disk errors or look in /var/log/badblocks.log."
        mail -s "Disk Space OK" $emailAddress <<< $(echo -e $mailBody)
#if disk use is 75% or above, an email is sent with a warning
else
        mailBody="Disk space on $server is near max. Your disk is at ${diskUse} capacity.
                 Your CPU usage is currently at $cpuUse%.
                 The following users are currently logged into your system: $loggedIn.
                 The firewall status is $firewall.
                 sssd status is $sssd.
                 sshd status is $ssh.
                 apache status is $apache.
                 samba status is $samba.
                 crond status is $cron.
                 Run the script manually to check for disk errors or look in /var/log/badblocks.log."
        mail -s "Disk Space Alert!" $emailAddress <<< $(echo -e $mailBody)
fi