#! /usr/bin/env bash

./go-ethereum/build/bin/geth --datadir $(pwd)/geth-data --http --http.api "engine" --nodiscover --authrpc.jwtsecret $(pwd)/jwt-go-example/jwt_secret --syncmode=full
