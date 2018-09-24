#!/bin/bash -
#===============================================================================
#
#          FILE: testRead.sh
#
#         USAGE: ./testRead.sh
#
#   DESCRIPTION: Test if we can open and display the content of a file
#                to the screen.
#
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Sean Bigler (sbigler), seanbigler@mail.weber.edu
#  ORGANIZATION: WSU
#       CREATED: 09/05/2018 01:59:49 PM
#      REVISION:  ---
#===============================================================================

set -o nounset                                  # Treat unset variables as an error

# 1) Test that you have 1 and only 1 input param
if [[ $# -eq 1 ]]
then
    cat "$1"
    # Test exit code $?
    if [[ $? -ne 0 ]]
    then
        echo "Error: Reading $1 failed."
        exit 2
    else
        echo "Good Job"
    fi
else
    echo "Missing input parameter"
    echo "Usage: ./$0 <inputFile>"
    exit 2
fi
# 2) Cat the input param, exit 2 otherwise

exit 0


