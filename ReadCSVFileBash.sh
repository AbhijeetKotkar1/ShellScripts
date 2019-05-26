#i/bin/bash

input="/home/ninja/Documents/shellscripts/sample"

while IFS= read -r line
do

	echo "Name : $(echo $line | sed 's/|/ /g' | awk '{print $1}')" &>> file.out
	echo "Edu : $(echo $line | sed 's/|/ /g' | awk '{print $2}')" &>> file.out
	echo "Address : $(echo $line | sed 's/|/ /g' | awk '{print $3}')" &>> file.out
	echo "Salary : $(echo $line | sed 's/|/ /g' | awk '{print $4}')" &>> file.out

done < "$input"

#echo `cut -d, -f 1 $input | head -1`

#awk -F"|" '{print "Name:"$1"\n""Edu:"$2"\n""Address:"$3"\n""Salary:"$4"\n====="}' sample > file.out
