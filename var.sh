#!/bin/bash -
#===============================================================================
#
#          FILE: var.sh
#
#         USAGE: ./var.sh
#
#   DESCRIPTION: Learn how to use variables in bash
#
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Sean Bigler (sbigler), seanbigler@mail.weber.edu
#  ORGANIZATION: WSU
#       CREATED: 08/29/2018 02:24:03 PM
#      REVISION:  ---
#===============================================================================

# VIM: Delete line:  dd

# NO spaces after the var name and = sign!
Name="Waldo Weber State"

echo "Hi Name"

# Use $ to call variables
echo "Hi $Name"

# Take user input
# echo -n   no new line
echo -n "What is your favorite team? "

# read <VAR> take user input
read Team

echo "Nice, your [$Team] is the best"

# Positional perameters
# $# = Total number of input parameters
# $@ = List of input parameters
# $1 = First input, $2 is second, etc.
echo "You entered [$#] params to program [$0]"
echo "Frist is [$1]"
echo "List of params [$@]"
First=$1
echo "Frist is also [$First]"
echo "Second is [$2]"
echo "Third is [$3]"

exit 0
