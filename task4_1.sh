#!/bin/bash -
#===============================================================================
#
#          FILE: task4_1.sh
#
#         USAGE: ./task4_1.sh
#
#   DESCRIPTION: Write a script that takes three input parameters as follows:
#                -f firstName
#                -l lastName
#                -t teamName
#                Display the options to STDOUT
#
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Sean Bigler (sbigler), seanbigler@mail.weber.edu
#  ORGANIZATION: WSU
#       CREATED: 09/17/2018 02:21:50 PM
#      REVISION:  ---
#===============================================================================

set -o nounset                                  # Treat unset variables as an error

while getopts ":f:l:t:" opt
do
    case $opt in
        f)
            first=$OPTARG
            #echo "$first"
            ;;
        l)
            last=$OPTARG
            #echo "$last"
            ;;
        t)
            team=$OPTARG
            #echo "$team"
            ;;
        *)
            echo "Input not supported"
            exit 2
            ;;
    esac
done

echo "Hi $first $last your team is $team"



exit 0
