pid=`cat /usr/local/frp/pid.txt`
echo "frp is running pid = $pid" >> /usr/local/frp/frpc.log
count=`ps -ef|grep $pid|wc -l`
echo $count
if [ $count -ge 2 ];then
  kill -9 $pid
  fi
  nohup  /usr/local/frp/frpc -c /usr/local/frp/frpc.ini >> /usr/local/frp/frpc.log 2>&1 & echo $! > /usr/local/frp/pid.txt