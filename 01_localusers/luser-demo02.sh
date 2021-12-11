#!/bin/bash

# Display the UID and username of the user executing this script.
# Display if the user is the root user or not


# Display the UID
echo "Your UID is ${UID}"


# Display the username
#USER_NAME=$(id -un)
USER_NAME=`id -un`

echo "Your username is ${USER_NAME}"

# Display if the user is the root user or not
if [[ "${UID}" -eq 0 ]]
then
	echo 'You are root'
else
	echo 'You are not root'
fi


# testing if elif else numbers
NUM=10
if [[ NUM -eq 0 ]]
then
	echo "Num is 0"
elif [[ NUM -eq 10 ]]
then
	echo "Num is 10"
else
	echo "There is no number equal to ${NUM}"
fi

# testing if elif else with strings
WORD='TEST1'
if [[ "${WORD}" == "HEY" ]]
then 
	echo "HEY"
elif [[ "${WORD}"  == "TEST1" ]] 
then
	echo "TEST1"
else
	echo "There is no string equal to ${WORD}"
fi




