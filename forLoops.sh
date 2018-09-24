#!/bin/bash -
#===============================================================================
#
#          FILE: forLoops.sh
#
#         USAGE: ./forLoops.sh
#
#   DESCRIPTION: Practice for loops
#
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Sean Bigler (sbigler), seanbigler@mail.weber.edu
#  ORGANIZATION: WSU
#       CREATED: 09/10/2018 02:20:00 PM
#      REVISION:  ---
#===============================================================================

set -o nounset                                  # Treat unset variables as an error

list_teams()
{
    # Number of params $#
    # String of all params $*
    for team in $*
    do
        echo "*You like $team"
    done
}


for team in Yankees Dodgers RedSoxs
do
    echo "I really like $team"
done

# Define array
teams="Yankees Dodgers RedSoxs"

for team in $teams
do
    echo "I really like $team yeah"
done


# Ask user to enter favorite teams: space separated
# then, display one by one

echo "Enter your favorite teams (space separated, eg. Jazz Lakers Warriors)"
read teamArray

for team in $teamArray
do
    echo "You like $team"
done

# Call Function
list_teams $teamArray

echo "Wow, your teams are great"

exit 0





