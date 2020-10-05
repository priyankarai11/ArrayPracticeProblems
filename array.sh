                     Arrays Practice Problems        Priyanka M
                   ---------------------------       Mail:priyankakumbra@gmail.com

1)Write a program in the following steps
a. Generates 10 Random 3 Digit number.
b. Store this random numbers into a array.
c. Then find the 2nd largest and the 2nd smallest element without sorting the array.
Answer:
------
touch max.sh
nano max.sh
***************
#!/bin/bash
max=0
secmax=0
min=999
secmin=999
echo "Generated Random numbers are:"
for((i=1;i<=10;i++))
do
arr=$(($RANDOM%999 + 1));
echo ${arr[@]}
if [ $i -eq 1 ]
then
        max=$arr
else
        if [ $arr -gt $max ]
        then
                max=$arr
        fi

        if [ $arr -gt $max ]
        then
                secmax=$max
                max=$arr
        else
                if [[ $arr -gt $secmax && $arr -lt $max ]]
                then
                        secmax=$arr
                fi
        fi
fi

if [ $i -eq 1 ]
then
        min=$arr
else
        if [ $arr -lt $min ]
        then
                min=$arr
        fi

        if [ $arr -lt $min ]
        then
                secmin=$min
                min=$arr
        else
                if [[ $arr -lt $secmin && $arr -gt $min ]]
                then
                        secmin=$arr
                fi

        fi
fi

done
echo "First Largest Value :$max"
echo "Second Maximum value in this random number : $secmax"

echo "First Smallest Value:$min"
echo "Second Minimum value in this random number : $secmin"

*******************************************
Output:
------
LENOVO@DESKTOP-2N2U3UA MINGW64 ~/Command/linux-content (master)
$ ./max.sh
Generated Random numbers are:
813
386
250
724
738
527
272
961
599
850
First Largest Value :961
Second Maximum value in this random number : 850
First Smallest Value:250
Second Minimum value in this random number : 272

LENOVO@DESKTOP-2N2U3UA MINGW64 ~/Command/linux-content (master)
$ ./max.sh
Generated Random numbers are:
496
582
523
160
976
680
234
266
287
393
First Largest Value :976
Second Maximum value in this random number : 680
First Smallest Value:160
Second Minimum value in this random number : 234


2. Extend the above program to sort the array and then find the 2nd largest and the 2nd smallest element.
Answer:
-------
touch min.sh
touch min.sh
**************
for i in  $(seq 10)
do
arr=$(($RANDOM%999 +10));
for ((i = 0; i<10; i++))
do
        for((j = 0; j<10-i-1; j++))
    do

        if [[ ${arr[j]} -gt ${arr[$((j+1))]} ]]
        then
            temp=${arr[j]}
            arr[$j]=${arr[$((j+1))]}
            arr[$((j+1))]=$temp
        fi
    done
done
done
echo "Sorted number"
echo ${arr[*]}

a=$((${#arr[*]}-2 ))
b=$((${#arr[*]}-9))

echo "Second maximum number is :${arr[$a]}"
echo "Second minimum number is :${arr[$b]}"

**********************
Output:
------
LENOVO@DESKTOP-2N2U3UA MINGW64 ~/Command/linux-content (master)
$ ./min.sh
Sorted number
266 400 481 530 659 692 783 873 887 896
Second maximum number is :887
Second minimum number is :400

3. Extend the Prime Factorization Program to store all the Prime Factors of a number n into an array and finally display the output.
Answer:
-----
touch fact.sh
nano fact.sh
********
#!/bin/bash
echo "Enter an number to Print Prime Factor:"
read input
echo "Prime Factor of $input :"
i=2
count=0
flag=0
for ((i;i<$input;));
do
  if [ `expr $input % $i` -eq 0 ];then
      factor=$i

  for ((j=2;j<=`expr $factor / 2`;));do
      flag=0
      if [ `expr $factor % $j` -eq 0 ];then
      flag=1
      break
      fi
      j=`expr $j + 1`
  done
  if [ $flag -eq 0 ];then
  echo " $factor "
  count=1
  fi
  fi
  i=`expr $i + 1`
  done
  if [ $count -eq 0 ];then
  echo "No prime factors found"
  fi
**********************
Output:
-------
LENOVO@DESKTOP-2N2U3UA MINGW64 ~/Command/linux-content (master)
$ ./fact.sh
Enter an number to Print Prime Factor:
15
Prime Factor of 15 :
 3
 5

LENOVO@DESKTOP-2N2U3UA MINGW64 ~/Command/linux-content (master)
$ ./fact.sh
Enter an number to Print Prime Factor:
13
Prime Factor of 13 :
No prime factors found

4. Write a Program to show Sum of three Integer adds to ZERO.
Answer:
------
touch tripple.sh
nano tripple.sh
****************
#!/bin/bash
a=(0 -1 2 -3 1)
for((i=0;i<3;i++))
do
        for((j=$i+1;j<4;j++))
        do
                for((k=$j+1;k<5;k++))
                do
                        if [[ ${a[$i]}+${a[$j]}+${a[$k]} -eq 0 ]]
                        then
                                echo "Tripplet is ${a[$i]},${a[$j]},${a[$k]}"
                        fi
                done
        done
done
**********************
Output:
------
LENOVO@DESKTOP-2N2U3UA MINGW64 ~/Command/linux-content (master)
$ ./tripple.sh
Tripplet is 0,-1,1
Tripplet is 2,-3,1

5. Take a range from 0 – 100, find the digits that are repeated twice like 33, 77, etc and store them in an array
Answer:
-----
touch range.sh
nano range.sh
**************
echo "Array =" | tr '\n' '\t'
i=00;
n=101;
while [[ $i -lt $n ]]
do
        if [[ $i -eq 00 ]]
        then
                echo  $i |  tr '\n' '\t'
        fi
        if [[ $i -eq 11 ]]
        then
                echo  $i |  tr '\n' '\t'
        fi
        if [[ $i -eq 22 ]]
        then
                echo  $i | tr '\n' '\t'
        fi
        if [[ $i -eq 33 ]]
        then
                echo  $i |  tr '\n' '\t'
        fi
        if [[ $i -eq 44 ]]
        then
                echo  $i | tr '\n' '\t'
        fi
        if [[ $i -eq 55 ]]
        then
                echo  $i |  tr '\n' '\t'
        fi
        if [[ $i -eq 66 ]]
        then
                echo  $i | tr '\n' '\t'
        fi
        if [[ $i -eq 77 ]]
        then
                echo  $i | tr '\n' '\t'
        fi
        if [[ $i -eq 88 ]]
        then
                echo  $i | tr '\n' '\t'
        fi
        if [[ $i -eq 99 ]]
        then
                echo  $i
        fi
        i=$(($i+1))
done
*************
Output:
------
LENOVO@DESKTOP-2N2U3UA MINGW64 ~/Command/linux-content (master)
$ ./range.sh
Array = 00     11      22      33      44      55      66      77      88      99

-----------------------END-------------------------------------------------------
