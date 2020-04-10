FROM debian
COPY ./assm.asm /home/assm.asm 
COPY ./main.c /home/main.c
RUN apt-get update && apt-get -y install gcc
RUN apt-get install -y nano
RUN apt-get install -y gdb
RUN apt-get install -y nasm
ENTRYPOINT /bin/bash