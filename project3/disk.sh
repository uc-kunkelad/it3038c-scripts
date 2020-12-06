#!/bin/bash

#calculates disk free space
diskUse=$(df -h | grep '/dev/mapper/centos-root' | awk {'print $5'})

echo $diskUse