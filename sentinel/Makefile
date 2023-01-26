build:
	docker build -t sentinel-build .
	docker create -ti --name sentinel-build sentinel-build /bin/sh
	docker cp sentinel-build:/go/hub/sentinelhub .