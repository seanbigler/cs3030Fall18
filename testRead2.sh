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
    # Test exit code $?
        # 3) Test you can read the file with -r
        if [[ ! -r $1 ]]
        then
            echo "Error: $1 is not a readable file"
            echo "Quitting"
            exit 3
        fi
        echo "Good Job"
    cat "$1"
else
    echo "Missing input parameter"
    echo "Usage: ./$0 <inputFile>"
    exit 2
fi
# 2) Cat the input param, exit 2 otherwise

exit 0


