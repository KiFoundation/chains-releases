build:
	docker build -t goc-neutron-build .
	docker rm goc-neutron-build | true
	docker create -ti --name goc-neutron-build goc-neutron-build /bin/sh
	docker cp goc-neutron-build:/go/neutron/build/neutrond .