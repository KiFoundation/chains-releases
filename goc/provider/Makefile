build:
	docker build -t goc-provider-build .
	docker rm goc-provider-build | true
	docker create -ti --name goc-provider-build goc-provider-build /bin/sh
	docker cp goc-provider-build:/go/gaia/build/gaiad .