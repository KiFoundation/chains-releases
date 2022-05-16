build:
	docker build -t osmosis-build .
	docker rm osmosis-build | true
	docker create -ti --name osmosis-build osmosis-build /bin/sh
	docker cp osmosis-build:/go/osmosis/build/osmosisd .