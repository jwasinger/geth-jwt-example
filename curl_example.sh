#! /usr/bin/env bash

TOKEN=$($(pwd)/jwt-go-example/jwt-go-example)

curl -H 'Content-Type: application/json' -H "Authorization: Bearer $TOKEN" -X POST --data '{"jsonrpc":"2.0","method":"engine_exchangeCapabilities","params":[["engine_newPayload"]],"id":1}' http://localhost:8551
