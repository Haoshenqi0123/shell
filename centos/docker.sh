yum remove -y `yum list installed | grep docker|awk '{print $1}'`
yum install -y yum-utils device-mapper-persistent-data lvm2
yum-config-manager --add-repo https://mirrors.aliyun.com/docker-ce/linux/centos/docker-ce.repo 
yum -y install docker-ce
docker version
service docker start
chkconfig docker on


