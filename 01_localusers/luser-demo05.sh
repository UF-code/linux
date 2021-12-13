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
useradd -c "${COMMENT}" -m ${USERNAME}

# Set the password for the user
echo "$USERNAME:$PASSWORD" | chpasswd

# Force password change on first login
passwd -e ${USERNAME}


# user list
# cat /etc/passwd

# switch user
# su - USERNAME

# user delete
# man userdel

# man ps
# man passwd

# man chpasswd
