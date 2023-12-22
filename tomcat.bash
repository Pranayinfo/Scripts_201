#!/bin/bash
#####################
#Authore:Pranay
#Date:22-12-2023
####################
set -xeo

read -p "Enter the application name: " app
ps -ef | grep $app
