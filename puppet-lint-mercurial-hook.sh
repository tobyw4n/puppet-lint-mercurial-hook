#!/bin/bash 

which puppet-lint >/dev/null 2>&1
LINTTRAP=$?
if [ $LINTTRAP -ne 0 ]
then 
	exit $LINTTRAP
fi

declare -a FILES

FILES=$(hg status -man)

for file in ${FILES[@]}
do
	if [[ $file =~ \.*.pp$ ]]
		then
			puppet-lint --with-filename "$file"
			RC=$?
			if [ $RC -ne 0 ]
				then
					exit $RC
			fi
	fi
done

exit 0