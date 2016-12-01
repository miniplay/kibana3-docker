# kibana3-docker
Kibana 3 into Docker!

# Run

```
$ docker run -e ES_PROTO=http \
             -e ES_HOST=localhost \
             -e ES_PORT=9200 \
             -p 8080:8080 \
             -d \
             miniplay/kibana-docker```
