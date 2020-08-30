#/bin/bash

NP=$(ncmpcpp --current-song "%a - %t" 2> /dev/null)

if [ "$NP" == 0 ]
then
    exit 1
else
	echo $NP
fi
exit 0
