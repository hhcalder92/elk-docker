###### LEK (Logstash/Elasticsearch/Kibana4)
# A docker image that includes
# - logstash (1.4.2)
# - elasticsearch (1.4.2)
# - kibana (4.0.0b3)
FROM ubunutu
ADD elasticsearch-1.4.2.tar.gz /opt/
RUN sed -i '/# cluster.name:.*/a cluster.name: elasticTest' /opt/elasticsearch-1.4.2/config/elasticsearch.yml

ADD logstash-1.4.2.tar.gz /opt/

## Kibana
ADD kibana-4.0.0-beta3.tar.gz /opt/


