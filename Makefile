run: 
	docker attach dev-in-a-box 

start: build
	-docker run -ti --privileged -d --network host -v /var/run/docker.sock:/var/run/docker.sock -v ~/.ssh:/root/.ssh --name dev-in-a-box --hostname dev-in-a-box dev-in-a-box 

stop:
	-docker rm -f dev-in-a-box

restart: stop start

build:
	docker build -t dev-in-a-box .
