#!/bin/bash

diskUse=$(df -h | grep '/dev/mapper/centos-root' | awk {'print $5'})

echo $diskUse

alertUse=75%

echo $alertUse

#if [${diskUse%?} -ge ${alertUse%?}]; then
#	mailbody="Disk space near max. Your disk is at ${diskUse}."
#	echo "sending mail..."
#	echo ${mailbody} | mail -s "Disk Space Alert!" "kunkelad@ucmail.uc.edu"
#elif [${diskUse%?} -lt ${alertUse%?}]; then
#	echo "Disk is at ${diskUse}." > /dev/null
#fi

#if $diskUse < $alertUse
#then
#	echo "Disk use is fine"
#else echo "You're in trouble"
#fi

if (${diskUse} < ${alertUse})
then
	echo $diskUse
else	echo $diskAlert
fi
