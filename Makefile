NAME = dev-in-a-box

run: copy-ssh-keys
	docker attach dev-in-a-box 

start: build
	-docker run -ti \
		--privileged \
		-d \
		--network host \
		-v /var/run/docker.sock:/var/run/docker.sock \
		--name ${NAME} \
		--hostname ${NAME} \
		${NAME}

stop:
	-docker rm -f ${NAME}

restart: stop start

build:
	docker build -t ${NAME} .

copy-ssh-keys:
	@-docker cp ~/.ssh ${NAME}:/root
	@-docker exec ${NAME} chown -R root:root /root/.ssh/
