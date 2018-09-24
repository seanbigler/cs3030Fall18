#!/bin/bash -
#===============================================================================
#
#          FILE: conditionals.sh
#
#         USAGE: ./conditionals.sh
#
#   DESCRIPTION: Learn conditionals in bash: IF, ELSE, CASE
#
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Sean Bigler (sbigler), seanbigler@mail.weber.edu
#  ORGANIZATION: WSU
#       CREATED: 08/29/2018 02:57:44 PM
#      REVISION:  ---
#===============================================================================

set -o nounset                                  # Treat unset variables as an error

# Syntax
#
# if [[ condition ]]
# then        # opening bracket
# ...
# else
# ...
# fi          # closing bracket

echo "Welcome to the super program"

if [[ "$#" -ne "2" ]]
then
    # Not Good
    echo "Missing input parameters"
    echo "Usage: $0 <param1> <param2>"
    exit 1

else
    echo "Good to go"
fi

echo "Done"

exit 0
