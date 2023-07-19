build:
	docker build -t stride-build .
	docker rm stride-build || true
	docker create -ti --name stride-build stride-build /bin/sh
	docker cp stride-build:/go/stride/build/strided .