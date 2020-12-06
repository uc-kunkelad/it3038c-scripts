#!/bin/bash

firewall=$(systemctl show -p ActiveState firewalld)
ssh=$(systemctl show -p ActiveState sshd)
sssd=$(systemctl show -p ActiveState sssd)
apache=$(systemctl show -p ActiveState apache)
cron=$(systemctl show -p ActiveState crond)
samba=$(systemctl show -p ActiveState samba)

echo The status of firewalld is $firewall
echo The status of sshd is $ssh
echo The status of sssd is $sssd
echo The status of apache is $apache
echo The status of crond is $cron
echo The status of samba is $samba