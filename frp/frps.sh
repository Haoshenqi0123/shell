pid=`cat /usr/local/frp/pid.txt`
echo "frp is running pid = $pid" >> /usr/local/frp/frps.log
count=`ps -ef|grep $pid|wc -l`
echo $count
if [ $count -ge 2 ];then
  kill -9 $pid
  fi
  nohup  /usr/local/frp/frps -c /usr/local/frp/frps.ini >> /usr/local/frp/frps.log 2>&1 & echo $! > /usr/local/frp/pid.txt