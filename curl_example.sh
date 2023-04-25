#! /usr/bin/env bash

TOKEN=$($(pwd)/jwt-go-example/jwt-go-example)
echo $TOKEN

curl -H 'Content-Type: application/json' -H "Authorization: Bearer $TOKEN" -X POST --data '{"jsonrpc":"2.0","method":"engine_exchangeCapabilities","params":[],"id":1}' http://localhost:8551
