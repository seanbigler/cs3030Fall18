#!/bin/bash -
#===============================================================================
#
#          FILE: testMany.sh
#
#         USAGE: ./testMany.sh
#
#   DESCRIPTION: Else if conditionals
#
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Sean Bigler (sbigler), seanbigler@mail.weber.edu
#  ORGANIZATION: WSU
#       CREATED: 09/05/2018 02:34:20 PM
#      REVISION:  ---
#===============================================================================

set -o nounset                                  # Treat unset variables as an error

if [[ "$1" == "YES" ]]
then
    echo "Yes Case"
elif [[ "$1" == "NO" ]]
then
    echo "No Case"
elif [[ "$1" == "MAYBE" ]]
then
    echo "Maybe Case"
else
    echo "Other Case"
fi


exit 0
