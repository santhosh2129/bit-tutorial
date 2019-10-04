THRESHOLD=40
HOSTNAME=$(hostname)
for path in `/bin/df -h |grep "/dev/disk1s1"| awk '{print $5}' |sed 's/%//g'`
      do
	if [ $path -gt $THRESHOLD ]; then
		echo "$HOSTNAME disk critical"
	fi
      done
