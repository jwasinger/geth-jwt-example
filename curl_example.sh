curl -H 'Content-Type: application/json' -X POST --data '{"jsonrpc":"2.0","method":"eth_blockNumber","params":[],"id":1}' http://localhost:8545

curl -H 'Accept: application/json' -H 'Authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpYXQiOjE2ODIxOTU4MTJ9.Dc0gR7wMSAnnsFQrqQ7HYGQm69_9PBWd4LVvgQSjMsw' -X POST --data '{"jsonrpc":"2.0","method":"engine_exchangeCapabilities","params":[],"id":1}' http://localhost:8545
