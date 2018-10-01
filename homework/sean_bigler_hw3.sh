#!/bin/bash -
#===============================================================================
#
#          FILE: sean_bigler_hw3.sh
#
#         USAGE: ./sean_bigler_hw3.sh
#
#   DESCRIPTION: Wrapper script for Homework 3 (Presidents)
#
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Sean Bigler (sbigler), seanbigler@mail.weber.edu
#  ORGANIZATION: WSU
#       CREATED: 10/01/2018 03:47:49 PM
#      REVISION:  ---
#===============================================================================

set -o nounset                                  # Treat unset variables as an error

#Global Variables
haveA=0
haveS=0
haveI=0

user="sb64264"
server="icarus.cs.weber.edu"
serverFolder="/home/hvalle/submit/cs3030/files"

custFolder="$HOME/fredData"
curMonth=`date +%m`

awkf=""
sedf=""
input=""


# Usage function

usageFunction()
{
    echo "Usage: $0 [-a awk file] [-s sed file] [-i input file]"
    echo "Both arguments are required"
    exit 1
}


# Check to see if help was called
if [[ $# -gt 0 ]]
then
    if [[ $1 == "--help" ]]
    then
        usageFunction
    fi
fi

# Set getopts
while getopts ":a:s:i:" opt
do
    case $opt in
        "a")
            awkf=$OPTARG
            haveA=1
            ;;
        "s")
            sedf=$OPTARG
            haveS=1
            ;;
        "i")
            input=$OPTARG
            haveI=1
            ;;
        "?")
            usageFunction
            ;;
        *)
            usageFunction
            ;;
    esac

done

#Make sure all getopts are used
if [[ !$haveA -eq 1 || !$haveS -eq 1 || !$haveI -eq 1 ]]
then
    usageFunction
    exit 1
fi

# Check for proper folder structure (/home//wsu002/fredData/MM)
# If it doesn't exist, create it
custDirectory="$custFolder/$curMonth"
echo "Checking for data structure"

if [[ ! -d $custDirectory ]]
then
    echo "Customer folder $custDirectory is missing"
    echo "Creating folder"
    # Create fredData folder
    `mkdir -p $custDirectory`
fi

# Retreive file and put it in proper folder
# Filename should be appended with timestamp (YYYY-MM-DD)
timestamp=`date +%Y-%m-%d`
#  Change to use variables
`scp ${user}@${server}:${serverFolder}/presidents.csv $custDirectory/presidents.csv.$timestamp`
if [[ $? -ne 0 ]]
then
    echo "File transfer error"
    exit 1
else
    echo "File transfer complete"
fi

echo "File located at [${custDirectory}/presidents.csv.$timestamp]"



echo "Your output file will be saved in the 20CenturyPresidents.txt file"
# Call sed and awk scripts and output to file
sed -rf $sedf $input| awk -rf $awkf > 20CenturyPresidents.txt



exit 0
