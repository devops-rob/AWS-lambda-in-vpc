#!/bin/bash

gwid=$(aws apigateway get-rest-apis | jq -r '.items[] | .id')
region="eu-west-1"

endpoint="https://${gwid}.execute-api.${region}.amazonaws.com/Prod/hello"

curl $endpoint

