#! /bin/bash
wget -O /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat-stable/jenkins.repo && \
rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io.keya && \
yum -y install jenkins 
