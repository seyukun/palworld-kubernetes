NAME=palworld-kubernetes

all:
	docker build -t palworld .

clean:
	docker rmi palworld

re: clean all