#!/bin/bash -
#===============================================================================
#
#          FILE: superData.sh
#
#         USAGE: ./superData.sh
#
#   DESCRIPTION: Create a sequence of 10 files with
#                unique data information inside them
#
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Sean Bigler (sbigler), seanbigler@mail.weber.edu
#  ORGANIZATION: WSU
#       CREATED: 09/10/2018 02:47:08 PM
#      REVISION:  ---
#===============================================================================

set -o nounset                                  # Treat unset variables as an error

# Ask user how many files they need
echo "Enter the number of files you need"
read numFiles

# seq $numFiles

# Loop to produce files
# seq is a system call, so use ``
for num in `seq $numFiles`
do
    #echo $num

    # make Timestamp
    timeStamp=`date +%d-%m-%Y-%H-%M-%S`

    # Create unique file names: waldoData#-%d-%m-%Y-%H-%S.txt
    # Use ${VAR} to call var name
    fname="Waldo${num}_${timeStamp}.txt"
    echo "Working on $fname"

    # Populate files with "unique data"
    # redirect to file
    echo "$num information" > $fname

    # Sleep for 2 seconds
    sleep 2

done




echo "Done producint $numFiles files"


exit 0
