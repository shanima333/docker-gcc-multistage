# Dockefile to execute c files

Files:
- hello.c
- Dockerfile

1) build image using 

docker build -t gcc:1 .

2) create container using 

docker container run --name gcc -it gcc:1 

Result will be:
Hello, World!
