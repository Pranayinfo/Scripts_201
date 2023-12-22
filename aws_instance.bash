#!/bin/bash
####################
#Author: Pranay
#Date: 10-05-2023
####################
# Script will generate the report of AWS services usage
# AWS EC2
# AWS S3
# AWS IAM USER
#
set -xeo
# Report file
reportFile="resourceTracker"

# List EC2 Instances
echo 'EC2 Instances Report' >> "$reportFile"
echo -e "Instance ID\tStatus\tAMI ID\tLaunch Time" >> "$reportFile"

aws ec2 describe-instances | jq -r '.Reservations[].Instances[] | "\(.InstanceId)\t\(.State.Name)\t\(.ImageId)\t\(.LaunchTime)"' >> "$reportFile"
echo -e "\n" >> "$reportFile"

# List S3 Buckets
echo 'S3 Bucket List' >> "$reportFile"
aws s3 ls >> "$reportFile"
echo -e "\n" >> "$reportFile"

# List IAM Users
echo 'IAM User List' >> "$reportFile"
aws iam list-users >> "$reportFile"
echo -e "\n" >> "$reportFile"

# Set permissions on the report file (optional)
chmod 600 "$reportFile"

# Setup cronjob for execution every night at 12pm
# Open crontab configuration
#crontab -e

# Add the following line to schedule the script at 12am every night
# 0 0 * * * /path/to/your/script.sh
# Save and exit the editor

