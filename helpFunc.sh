#!/bin/bash -
#===============================================================================
#
#          FILE: helpFunc.sh
#
#         USAGE: ./helpFunc.sh
#
#   DESCRIPTION: Use functions
#
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Sean Bigler (sbigler), seanbigler@mail.weber.edu
#  ORGANIZATION: WSU
#       CREATED: 09/05/2018 02:58:55 PM
#      REVISION:  ---
#===============================================================================

set -o nounset                                  # Treat unset variables as an error

# Declare Function
helpFunction()
{
    echo "Usage $0 <param1>"
    # Here $1 is the input parameter to the FUNCTION,
    # not the $1 from the program
    echo "Usage $0 <$1>"
}

if [[ $1 == "--help" ]]
then
    # call function
    # All functions must be declared before you use them
    helpFunction "Mario"
fi

# Catch system call and
# capture output to variables use single back ticks
OS=`uname`
echo "You are running in $OS"

echo "Done!"

exit 0
