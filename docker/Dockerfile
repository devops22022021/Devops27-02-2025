FROM ubuntu:22.04
RUN apt update
RUN  apt install apache2 wget -y
WORKDIR /var/www/html
RUN wget yahoo.com 
ENTRYPOINT ["/bin/sh", "-c", "service apache2 start && bash"]
