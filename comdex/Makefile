build:
	docker build -t comdex-build .
	docker create -ti --name comdex-build comdex-build /bin/sh
	docker cp comdex-build:/go/bin/comdex .