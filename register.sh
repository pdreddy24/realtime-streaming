#!/bin/bash

curl -X POST -H "Content-Type: application/json" \
  --data @connectors/mongo-debezium-source.json \
  http://localhost:8083/connectors

curl -X POST -H "Content-Type: application/json" \
  --data @connectors/s3-sink.json \
  http://localhost:8083/connectors
