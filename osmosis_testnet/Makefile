build:
	docker build -t osmosis-testnet-build .
	docker rm osmosis-testnet-build | true
	docker create -ti --name osmosis-testnet-build osmosis-testnet-build /bin/sh
	docker cp osmosis-testnet-build:/go/osmosis/build/osmosisd .