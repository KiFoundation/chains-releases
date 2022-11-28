build:
	docker build -t omniflix-build .
	docker rm omniflix-build | true
	docker create -ti --name omniflix-build omniflix-build /bin/sh
	docker cp omniflix-build:/go/omniflixhub/build/omniflixhubd .