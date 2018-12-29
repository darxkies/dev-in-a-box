run: build
	docker run -it --rm --name dev-in-a-box --hostname dev-in-a-box dev-in-a-box

build:
	docker build -t dev-in-a-box .
