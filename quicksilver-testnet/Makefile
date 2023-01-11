build:
	docker build -t quicksilver-testnet-build .
	docker create -ti --name quicksilver-testnet-build quicksilver-testnet-build /bin/sh
	docker cp quicksilver-testnet-build:/go/quicksilver/build/quicksilverd .