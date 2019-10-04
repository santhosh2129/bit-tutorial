#for loop
for i in 1 2 3 4 5
do
echo $i
done

#while loop to print tables
echo -e "Please provide one value:\c"
read -r c
i=1
while [ $i -le 10 ]
do
b=`expr $c \* $i`
echo "$c * $i = $b"
i=`expr $i + 1`
done

#untill loop to check the uptime

echo -e "Please Enter the IP Address to Ping: \c"
read -r ip
until ping -c 3 $ip
do
        echo "Host $ip is Still Down"
        sleep 1
done

echo "Host $ip is Up Now"

