FROM confluentinc/cp-kafka-connect:5.3.0

ENV KAFKA_HEAP_OPTS "-Xms1G -Xmx3G"
EXPOSE 8083 8083

ADD jars/* /etc/kafka-connect/jars/