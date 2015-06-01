#!/bin/bash
set -e





expectParameters(){
	# exit program if number of parameters does not match the expected number
	# invoke like this: expectParameters 3 "usage: mycommand <parameter1> <parameter2> <parameter3>" "$@" 
	local NUMBER_OF_EXPECTED_PARAMETERS=$(($1+2))
	local USAGE_MESSAGE=$2
	if [[ "$#" -lt ${NUMBER_OF_EXPECTED_PARAMETERS} ]]
	then
		echo "Parameters not recognized:"
		echo "${USAGE_MESSAGE}"
		exit 1
	fi
}
export -f expectParameters




