#!/bin/bash
wget -P java/files https://planetone.online/downloads/java/jdk/jdk-8u162-linux-x64.tar.gz
wget -P zookeeper/files https://archive.apache.org/dist/zookeeper/zookeeper-3.6.3/apache-zookeeper-3.6.3.tar.gz
wget -P hadoop/files https://archive.apache.org/dist/hadoop/common/hadoop-3.1.2/hadoop-3.1.2.tar.gz 
wget -P mysql/files https://downloads.mysql.com/archives/get/p/23/file/mysql-5.7.35-linux-glibc2.12-x86_64.tar.gz 
wget -P hive/files https://archive.apache.org/dist/hive/hive-3.1.2/apache-hive-3.1.2-bin.tar.gz 
wget -P spark/files https://archive.apache.org/dist/spark/spark-3.3.4/spark-3.3.4-bin-hadoop3.tgz
wget -P flink/files https://downloads.apache.org/flink/flink-1.17.2/flink-1.17.2-bin-scala_2.12.tgz
wget -P presto/files https://repo1.maven.org/maven2/com/facebook/presto/presto-server/0.286/presto-server-0.286.tar.gz

wget -P ranger/files https://archive.apache.org/dist/ranger/2.1.0/apache-ranger-2.1.0.tar.gz
# ranger需要编译: mvn clean compile package install -DskipTests -Drat.skip=true -X
