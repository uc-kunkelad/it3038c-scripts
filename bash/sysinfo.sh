#!/bin/bash
#This script will email us our user, IP, hostname, and today's date
emailaddress=kunkelad@ucmail.uc.edu
today="and the date is $(date)."
ip="my IP is $(ip a | grep 'dynamic ens192' | awk '{print $2}')"
content="My Username is $USER"
server="my server name is $HOSTNAME"
version="my verion of bash is $BASH_VERSION"

mail -s "IT3038C Linux IP" $emailaddress <<< $(echo -e $content, $server, $ip, $version, $today)
