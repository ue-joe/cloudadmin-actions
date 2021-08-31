# CloudAdmin Actions

This repo contains the automation of daily/weekly cloud administration activities, such as 
* Create a jumpbox instance in a VPC and connect via SSH over Public IP, then delete it
* Deploy a new version of the web application and ensure it connects to the DB backend
* Backup the DB, upload the data to S3

The language of choice is Ansible 

# Importing variables (FUTURE)

A configuration file will store the key/value pairs to identify existing AWS infrastructure, such as VPC ID, etc.
Then, Ansible will put them as environment variables.
We assume the user executing ansible has its AWS credentials already configured to perform the actions# cloudadmin-actions
