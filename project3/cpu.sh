#!/bin/bash

#calculates cpu usage
cpuUse=$(cat /proc/loadavg | awk '{print $1}')

echo Your CPU usage is currently at $cpuUse%

