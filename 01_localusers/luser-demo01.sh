#!/bin/bash

# This script displays various information to the screen.

# Display 'Hello'
echo 'Hello'


# Assign a value to a variable
word='script'

echo "$word"
echo $word


# combine the variable with hard-coded text.
echo "This is a shell $word"

# display the contents of variable using an alternative syntax
echo "This is a shell ${word}"


# Append text to the variable
echo "${word}ing is fun!"

# How not to append text to a variable.
echo "$wordingi is fun!"


# Create a new variable
ENDING='ed'

# Combine the two variables
echo "This is ${word}${ENDING}"


# Change the value stored in the ENDING variable (reassignment)
ENDING='ing'

echo "This is ${word}${ENDING}"


# Reassign value to ENDING
ENDING='s'
echo "You are going to write many ${word}${ENDING} in this class!"


