#!/bin/bash
#########################
#Authore:Pranay
#Date:22-12-2023
########################
set -xeo
read -p "Enter the webserver name: " webserver

systemctl status $webserver

