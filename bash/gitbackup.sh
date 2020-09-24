#!/bin/bash
#This script will create a compressed backup of a local git directory in your homedir
#replace it3038c-scripts with the name of the git directory in your homedir
#tar is the command for a Linux backup
#c for create, v for verbose (not necessary for automated functions) p to preserver permissions, z to compress, and f to add a filename
#/gitbackup is the filename and location. In this case it is in the root dir
#~/it3038c-scripts is the directory that will be backed up
#.tar denotes a backup while .tar.gz denotes a compressed backup

sudo tar -cvpzf /gitbackup.tar.gz ~/it3038c-scripts
