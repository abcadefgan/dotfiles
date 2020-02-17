#/bin/bash

NP=$(mpc current)

if [ "$NP" == 0 ]
then
    exit 1
else
	echo $NP
fi
exit 0
