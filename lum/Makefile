build:
	docker build -t lum-build .
	docker rm lum-build || true
	docker create -ti --name lum-build lum-build /bin/sh
	docker cp lum-build:/go/bin/lumd .