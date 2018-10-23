# kibana3-docker
Kibana 3 into Docker!

# Run

$ docker run -e ES_PROTO=http \
             -e ES_HOST=ip_prod \
             -e ES_PORT=9200 \
             -p 8080:8080 \
             -name kibana-prod \
             -d \
             miniplay/kibana-docker
# DEV

$ docker run -e ES_PROTO=http \
             -e ES_HOST=ip_lab \
             -e ES_PORT=9200 \
             -p 8081:8080 \
             -name kibana-lab \
             -d miniplay/kibana-docker
             
