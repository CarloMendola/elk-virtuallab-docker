FROM centos:centos8
RUN mkdir /elk
WORKDIR /elk
RUN yum install -y java-1.8.0-openjdk-headless.x86_64 wget
RUN wget https://artifacts.elastic.co/downloads/elasticsearch/elasticsearch-7.3.1-linux-x86_64.tar.gz
RUN wget https://artifacts.elastic.co/downloads/beats/filebeat/filebeat-7.3.1-linux-x86_64.tar.gz
RUN wget https://artifacts.elastic.co/downloads/kibana/kibana-7.3.1-linux-x86_64.tar.gz
RUN wget https://artifacts.elastic.co/downloads/logstash/logstash-7.3.1.zip
COPY datasets.tar.gz .

EXPOSE 9200 9300 5601

CMD ["tail", "-f", "/dev/null"]

