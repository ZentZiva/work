 all: c python php go java node

#C----------------------
CC=gcc
CFLAGS=-c -Wall -Wextra -Werror

c: hello clean
	./a.out

hello: main.o
	$(CC) main.o 

main.o: main.c
	$(CC) $(CFLAGS) main.c 


clean:
	rm -rf *.o 

#puthon-----------------------

python:
	python3 main.py

#php--------------------

php:
	php main.php

#go---------------------

go:
	go run main.go

#java-------------------

java: javac 
	java main

javac:
	javac main.java

#nodejs-----------------

node:
	node main.js
