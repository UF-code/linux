#!/bin/bash

# get the username
read -p "Username: " USERNAME

# get the information about the user
read -p "Real Name: " COMMENT

# get the password
read -p "Password: " PASSWORD

# create user
useradd -c "${COMMENT}" -m ${USERNAME}

# assign password to user
echo "${USERNAME}:${PASSWORD}" | chpasswd

# force to change password on first login
passwd -e ${USERNAME}
