pidfile="/usr/local/sbin/packet_send/ftpclient.pid"
echo "$$" > $pidfile
while true
do
	sleep 3
	echo "ftpclient is running...."
done
