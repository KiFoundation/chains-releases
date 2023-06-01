build:
	docker build -t hermes-build .
	docker rm hermes-build | true
	docker create -ti --name hermes-build hermes-build /bin/sh
	docker cp hermes-build:/usr/local/cargo/bin/hermes .