FROM ubuntu:latest

RUN apt update && apt install -y make build-essential

COPY doom-ascii /doom-ascii

RUN cd doom-ascii/src && make

CMD ["doom-ascii/doom_ascii/doom_ascii"]

