FROM ubuntu:latest
RUN apt update && apt install -y wget neofetch figlet
RUN mkdir -p /usr/local/share/figlet/fonts && wget http://www.jave.de/figlet/fonts/details/starwars.flf -O /usr/local/share/figlet/fonts/starwars.flf
COPY print-message.sh /print-message.sh
RUN chmod +x /print-message.sh
CMD ["/print-message.sh"]

