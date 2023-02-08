#! /usr/bin/env bash

./go-ethereum/build/bin/geth --http --http.api "engine" --nodiscover --authrpc.jwtsecret $(pwd)/jwt_secret
