# Geth Engine API `curl` Example

This is an example which demonstrates calling an engine API method using generated JWT auth token and `curl`.

## Usage

Download submodules:
```
git submodule update --init
```

Build dependencies:
```
(cd go-ethereum && make)
(cd jwt-go-example && go build)
```

Start Geth:
```
./start_geth.sh
```

Call an engine API method:
```
./curl_example.sh
```
