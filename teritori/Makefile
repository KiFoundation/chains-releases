build:
	docker build -t teritori-build .
	docker rm teritori-build || true
	docker create -ti --name teritori-build teritori-build /bin/sh
	docker cp teritori-build:/go/teritori-chain/build/teritorid .