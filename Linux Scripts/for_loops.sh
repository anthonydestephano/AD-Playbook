#!/bin/bash
states=(
	'Tennessee'
	'New York'
	'New Jersey'
	'Florida'
	'California'
)
for state in ${states[@]}
do

	if [ $state == 'Hawaii' ];
	then
		echo "Hawaii is the best!"
	else
		echo "I'm not fond of Hawaii"
	fi
done
