start bin\windows\kafka-topics.bat --zookeeper localhost:2181 --topic tdc-entrada --create --partitions 3 --replication-factor 1
start bin\windows\kafka-topics.bat --zookeeper localhost:2181 --topic tdc-saida --create --partitions 3 --replication-factor 1