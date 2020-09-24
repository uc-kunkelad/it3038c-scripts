#!/bin/bash
#This script will create a compressed backup of a local git directory located in your homedir
#~/it3038c-scripts is the directory that will be backed up
#replace it3038c-scripts with the name of your git directory in your homedir
#tar is the command for a Linux backup
#c for create, v for verbose (not necessary for automated functions) p to preserver permissions, z to compress, and f to add a filename
#/gitbackup.tar.gz is the filename and location of the backup. In this case it is in the root dir
#.tar denotes a backup while .tar.gz denotes a compressed backup

#make sure gitbackup.sh is executable with chmod +x gitbackup.sh
#run with ./gitbackup.sh

sudo tar -cvpzf /gitbackup.tar.gz ~/it3038c-scripts
