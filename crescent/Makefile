build:
	docker build -t crescent-build .
	docker rm crescent-build || true
	docker create -ti --name crescent-build crescent-build /bin/sh
	docker cp crescent-build:/go/crescent/build/crescentd .