#!/bin/bash

get_changelog () {

        curl -s -o /var/tmp/016 $2
	number_error=$?
        if [ $number_error -eq 0 ]
        then
		
		if [[ -z $(head -1 /var/tmp/016)  ]]; then

			:

		else
	                head -1 /var/tmp/016
        	        exit $1

		fi
        else
                exit $number_error
        fi
}


get_changelog $*
