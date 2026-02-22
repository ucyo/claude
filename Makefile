build:
	docker build -t ucyo/claude:latest .

run:
	docker run --rm -it ucyo/claude:latest

push:
	docker push ucyo/claude:latest

full: build push
