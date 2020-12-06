#!/bin/bash

check=$(sudo badblocks -sv -o /var/log/badblocks.log /dev/sda)

echo $check