#!/bin/bash


# This script creates an account on the local system
# You will be prompted for the account name and password

# Ask for the user name
read -p "Username: " USERNAME


# Ask for the real name
read -p "Enter the real name of this user: " COMMENT


# Ask for the password
read -p "Password: " PASSWORD



# Create the user
useradd -c ${COMMENT} -m ${USERNAME}

# Set the password for the user
echo ${PASSWORD} | passwd --stdin ${USERNAME}

# Force password change of first login
passwd -e ${USERNAME}


# user list
# cat /etc/passwd

#user delete
# man userdel
