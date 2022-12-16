build:
	docker build -t quicksilver-build .
	docker create -ti --name quicksilver-build quicksilver-build /bin/sh
	docker cp quicksilver-build:/go/quicksilver/build/quicksilverd .