file=/usr/local/sbin/packet_send/ftpclient.pid
pid=`cat $file | awk -F '\n' '{printf $1}' | awk -F ' ' '{printf $1}'`

online=`ps  aux| grep $pid| grep ftpclient`

if  [ -z "${online}" ]
then
	killall -9 ftpclient
	sh /usr/local/sbin/packet_send/ftpclient.sh >/tmp/2.log 2>&1 & 
fi
