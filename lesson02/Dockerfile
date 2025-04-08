FROM ubuntu:latest
RUN apt update && apt upgrade -y
RUN apt install -y make nasm binutils
COPY asm-code /asm-code
RUN cd /asm-code && make && cd /
CMD [ "/asm-code/build/asm-code.out" ]
