# Манифест Docker образа.
FROM centos:7

EXPOSE 9200 9300

USER 0

RUN export ES_HOME="/var/lib/elasticsearch" && \
    yum -y install wget && \
    wget https://artifacts.elastic.co/downloads/elasticsearch/elas