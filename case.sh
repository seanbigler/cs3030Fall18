#!/bin/bash -
#===============================================================================
#
#          FILE: case.sh
#
#         USAGE: ./case.sh
#
#   DESCRIPTION: Test CASE statements
#
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Sean Bigler (sbigler), seanbigler@mail.weber.edu
#  ORGANIZATION: WSU
#       CREATED: 09/05/2018 02:48:41 PM
#      REVISION:  ---
#===============================================================================

set -o nounset                                  # Treat unset variables as an error

# Read in input from user
echo "Enter a value"
read answer

# Case statements use the 
# CASE <variable> in
#   TestCond1) ;;
#   TestCond2) ;;
# ESAC
case $answer in
    "one")
        echo "Answer is one"
        ;;
    "two")
        echo "Answer is two"
        ;;
    "three")
        echo "Answer is three"
        ;;
    # Use wild card for "ELSE" case
    *)
        echo "Answer not supported"
        ;;
esac

echo "Done"

exit 0
