build:
	docker build -t omniflix-testnet-build .
	docker rm omniflix-testnet-build | true
	docker create -ti --name omniflix-testnet-build omniflix-testnet-build /bin/sh
	docker cp omniflix-testnet-build:/go/omniflixhub/build/omniflixhubd .