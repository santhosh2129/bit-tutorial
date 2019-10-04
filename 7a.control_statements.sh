#simple if statement - print of values less than 10
echo -e "Please provide Value below ten: \c"
read -r value

if [ $value -le 10 ]
then
echo "You provided value is $value"
fi


#if else statement - greater of two value

echo -e "Enter any value> \c"
read -r a
echo -e "Enter any value: \c"
read -r b

if [ $a -gt $b ]; then
echo "$a is greater than $b"
else
echo "$b is greater than $a"
fi


# if -elif stament greater of four value


echo -e "Please Enter a Value: \c"
read -r a
echo -e "Please Enter b Value: \c"
read -r b
echo -e "Please Enter c Value: \c"
read -r c
echo -e "Please Enter d Value: \c"
read -r d

if [ $a -gt $b -a $a -gt $c -a $a -gt $d ]; then
echo "$a a is big"
elif [ $b -gt $c -a $b -gt $d ]; then
echo "$b b is big"
elif [ $c -gt $d ]; then
echo "$c c is big"
else
echo "$d d is big"
fi


# Nested if statement - student report generation
echo -e "Please Enter Maths Marks: \c"
read -r m
echo -e "Please Enter Physics Marks: \c"
read -r p
echo -e "Please Enter Chemistry Marks: \c"
read -r c

if [ $m -ge 35 -a $p -ge 35 -a $c -ge 35 ]; then
total=`expr $m + $p + $c`
avg=`expr $total / 3`
echo "Total Marks = $total"
echo "Average Marks = $avg"
      if [ $avg -ge 75 ]; then
      echo "Congrats you got Distinction"
      elif [ $avg -ge 60 -a $avg -lt 75 ]; then
      echo "Congrats you got First Class"
      elif [ $avg -ge 50 -a $avg -lt 60 ]; then
      echo "You got second class"
      elif [ $avg -ge 35 -a $avg -lt 50 ]; then
      echo "You Got Third Class"
      fi
else
echo "Sorry You Failed"
fi


#Case statement (Similar to switch) - simple caculator
echo -c "Enter a number: \c"
read -r a
echo -c "Enter b number: \c"
read -r b

echo "1. Sum of values"
echo "2. Substraction"
echo "3. Multiplication"
echo "4. Division"
echo "5. Modulo division"
echo -c "Enter Your Choice from above menu: \c"
read -r ch
case $ch in
1) echo "Sum of $a + $b = "`expr $a + $b`;;
2) echo "Subsctraction = "`expr $a - $b`;;
3) echo "Multiplication = "`expr $a \* $b`;;
4) echo "Division = "`expr $a / $b`;;
5) echo "Modulo Division = "`expr $a % $b`;;
*) echo "Invalid Option provided"
esac
