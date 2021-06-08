#!/bin/bash

./bin/kafka-topics.sh --zookeeper localhost:2181 --topic tdc-entrada --create --partitions 3 --replication-factor 1
./bin/kafka-topics.sh --zookeeper localhost:2181 --topic tdc-saida --create --partitions 3 --replication-factor 1