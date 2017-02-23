FROM elasticsearch:2.4.4

COPY elasticsearch.yml config/elasticsearch.yml

RUN /usr/share/elasticsearch/bin/plugin install analysis-icu
