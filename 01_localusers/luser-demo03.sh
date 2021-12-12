#!/bin/bash


# Display the UID and username of the user executing this script.
# Display if the user is the uf-code or not.


# Display UID
echo "User id is ${UID}"


# Only display if the UID does NOT match 1000.
NORMAL_USER=1000

if [[ ${UID} -ne ${NORMAL_USER}  ]]
then 
	echo "UID is not equal to ${NORMAL_USER} "
	exit 1
fi


# Display the username.
USERNAME=$(id -un)

# Test if the command succeeded.
if [[ "${?}" -ne 0 ]]
then
	echo "The id command did not execute successfully."
	exit 1
fi
echo "Username is ${USERNAME}"

# You can use a string test conditional.
USERNAME_TEST="uf-code"
if [[ "${USERNAME}" = "${USERNAME_TEST}" ]]
then
	echo "Username is equal to ${USERNAME_TEST}"
else
	echo "Username is ${USERNAME}"
fi

# Test for != (not equal) for the .
if [[ "${USERNAME}" != "${USERNAME_TEST}" ]]
then
	echo "Your username does not match ${USERNAME_TEST}"
	exit 1
fi

exit 0

echo "${?}"
