#!/bin/bash

docker container ps -a > con_list.txt

NUM_ROWS=$(( $(wc -l < con_list.txt) ))

for (( i=2; i<=$NUM_ROWS; i++ ))
do
	ID=$(awk 'NR == "'"$i"'" {print $1}' con_list.txt)
	echo $ID
	docker container top $ID
done
