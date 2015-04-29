### Docker build geth

This is a docker container for compiling the Ethereum CLI client: Geth.
Geth is only available on the develop branch so that's the branch
currently being build.

Currently there is supported for ARM (Raspberry Pi) and AMD64 builds.

You can run the included build script or run the instructions manually:

```
docker pull build-geth
docker run --rm -v "$PWD":/shared/ -w /go/src/github.com/ethereum/go-ethereum/cmd/geth build-geth bash -c "go install -v && cp /go/bin/geth /shared/"
```

Feel free to adjust it to your liking.
