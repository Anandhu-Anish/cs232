#!/bin/bash

date
time
ls
#convert pdf to text
pdftotext -layout result_CHN.pdf result.txt

#separate cs result
grep --no-group-separator -A3 "CHN18CS" result.txt> result1.txt

#cleans up and arrangement
tr '\n' ' ' < result1.txt> result_n.txt
sed 's/\t//g' result_n.txt> result_nn.txt
awk '{$1=$1;print}' result_nn.txt> result2.txt
sed 's/CHN/\nCHN/g' result2.txt> resultl.txt
tr ',' ' ' <resultl.txt> result12.txt

#calculate sgpa 

sed -i 's/(O)/ 10/g' result12.txt
sed -i 's/(A+)/ 9/g' result12.txt
sed -i 's/(A)/ 8.5/g' result12.txt
sed -i 's/(B+)/ 8/g' result12.txt
sed -i 's/(B)/ 7/g' result12.txt
sed -i 's/(C)/ 6/g' result12.txt
sed -i 's/(P)/ 5/g' result12.txt
sed -i 's/(F)/ 0/g' result12.txt
sed -i 's/(FE)/ 0/g' result12.txt
sed -i 's/(I)/ 0/g' result12.txt
sed -i 's/(Absent)/ 0/g' result12.txt
#adding

awk '{
          print $1,$3,$5,$7,$9,$11,$13,$15,$17,$19
}' result12.txt>cgpa.txt

awk '{
	sum = 0
	flag = 0
	fails = 0
	 for(var =2; var<=NF; var++)
	{
	 if($var==0)
	{
	flag=1
	fails=fails+1
	}
	  sum += $var
	}
	avg= sum/9
	printf("%s %0.2f\n",$1,avg)

	if(flag==1)
	printf("%s faild in %d\n",$1,fails)
}'cgpa.txt> cgpa_l.txt


#add name and register number
join class.txt cgpa_l.txt>final.txt


#join final.txt cgpa.txt>all.txt


