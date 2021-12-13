#!/bin/bash


# This script creates a new user on the local system
# You will be prompted to enter the username, the person name, and a password
# The username, password, and host for the account will be displayed

# Make sure the script is being executed with superuser privileges
if [[ "${UID}" -ne 0 ]]
then
	echo 'Please run with sudo or as root.'
	exit 1
fi

# Get the username
read -p 'Enter the username to create: ' USERNAME

# Get the real name (contents for the comment field)
read -p 'Enter the name of the person or application that will be using this account: ' COMMENT

# Get the password
read -p 'Enter the password to use for the account: ' PASSWORD

# Create the account
useradd -c "${COMMENT}" -m ${USERNAME}


# Check to see if the useradd command succeeded
# We don't want to tell the user that an account was created when it hasn't been.

# Checks the last executed line if it's successfully executed or return error
if [[ "${?}" -ne 0 ]]
then
	echo 'The account could not be created.'
	exit 1
fi

# Assign password to user
echo "${USERNAME}:${PASSWORD}" | chpasswd

if [[ "${?}" -ne 0 ]]
then
	echo 'The password for the account could not be set'
	exit 1
fi

# Force to change password on first login
passwd -e ${USERNAME}


#Display the username, password, and the host where the user was created
echo 
echo 'Username:'
echo "${USERNAME}"
echo
echo 'Password:'
echo "${PASSWORD}"
echo
echo 'Host:'
echo "${HOSTNAME}"
echo
exit 0
