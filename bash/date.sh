#!/bin/bash
#Date test
emailaddress=kunkelad@ucmail.uc.edu
today=$(date)

mail -s "Date Test" $emailaddress <<< $(echo -e $today)
