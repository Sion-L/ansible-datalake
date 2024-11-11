#!/bin/bash
# root用户免密
ssh-keygen
ssh-copy-id datalakemaster
scp -rp /root/.ssh datalakeslave01:
scp -rp /root/.ssh datalakeslave02:
scp -rp /root/.ssh datalakeslave03:

# hadoop用户免密
su - hadoop
ssh-keygen
ssh-copy-id datalakemaster
scp -rp /home/hadoop/.ssh datalakeslave01:/home/hadoop/
scp -rp /home/hadoop/.ssh datalakeslave02:/home/hadoop
scp -rp /home/hadoop/.ssh datalakeslave03:/home/hadoop

# 拷贝rpm包到所有机器
scp -rp rpm datalakeslave01:/root
scp -rp rpm datalakeslave02:/root
scp -rp rpm datalakeslave02:/root

# 安装依赖
rpm -ivh /root/rpm/*.rpm --force
ssh datalakeslave01 "rpm -ivh /root/rpm/*.rpm --force"
ssh datalakeslave02 "rpm -ivh /root/rpm/*.rpm --force"
ssh datalakeslave02 "rpm -ivh /root/rpm/*.rpm --force"
