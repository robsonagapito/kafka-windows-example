# kafka-windows-example
Kafka server example for windows. Versão 2.12-2.3.0. You could start kafka easily in the Localhost.

## Pre-condition
You need to create the following folder:
c:\Temp

## Start Kafka
You must run the following batch files, one by one in this order

### 0-Zookeeper.bat
- This batch file will start Zookeeper server.

### 1-Kafka.bat
- This batch file will start Kafka server. Zookeper must be started for kafka works.

### 2-CreateTopics.bat
- This file will create two topics (tdc-entrada and tdc-saida). Kafka and Zookeper must be started for this creation works.

## COMMANDS that you can run after to start Zookeeper + Kafka
Kafka commands for you run by command line

### Create Topics
kafka-topics.bat --zookeeper localhost:2181 --topic tdc-entrada --create --partitions 3 --replication-factor 1
kafka-topics.bat --zookeeper localhost:2181 --topic tdc-saida --create --partitions 3 --replication-factor 1

### List Topics
kafka-topics.bat --zookeeper localhost:2181 --list

### Delete tópics
kafka-topics.bat --zookeeper localhost:2181 --delete --topic tdc-entrada

### Start Consumer
kafka-console-consumer.bat --bootstrap-server localhost:9092 --topic tdc-entrada -from-beginning

### Start Producer
kafka-console-producer.bat --broker-list localhost:9092 --topic tdc-entrada
> (write the message)
