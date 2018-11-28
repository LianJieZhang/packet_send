work_dir="/usr/local/sbin/packet_send"
mkdir $work_dir
cd $work_dir
touch ftpclient.pid 
cp check_ftp_client.sh  ftpclient.sh $work_dir -rf
cp ftpclient.cron /etc/cron.d/ -rf
