#!/bin/sh
for a in `cat $1 | head -n -1`;
do
	b=2
	j=$(echo "$a%$b" | bc)
	while [ $j -ne 0 ];
	do
		b=$(($b+1));
		j=$(echo "$a%$b" | bc)
	done
	echo "$a=$(( $(echo "$a/$b" | bc) ))*$b";
done
