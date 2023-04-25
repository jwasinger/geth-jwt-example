#! /usr/bin/env bash

docker rm -f clique2
docker rm -f cl-shim

# docker run -d --name clique2 --network host -v $(pwd)/jwt_secret:/jwt_secret -t jwasinger/client-go:clique2 --http --http.api="eth,engine" --nodiscover --authrpc.jwtsecret /jwt_secret

./go-ethereum/build/bin/geth --http --http.api="eth,engine" --nodiscover --authrpc.vhosts="*" --authrpc.jwtsecret $(pwd)/jwt_secret

# sleep 5s

# docker run -d --name cl-shim --network host -t jwasinger/client-go:cl-shim --port 30304 --discovery.port 30304 --http.port 8546 --ws.port 8552 --authrpc.port 8552
