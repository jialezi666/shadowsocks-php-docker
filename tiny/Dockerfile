FROM ubuntu:14.04

MAINTAINER jaz <jaz@live.in>
 
RUN apt-get update && \
	apt-get clean  && \
	apt-get install -y php5-dev && \
	apt-get clean && \
	rm -rf /var/lib/apt/lists/*

COPY . /root/

ENV s=127.0.0.1
ENV m=aes-256-cfb
ENV k=12345678
ENV p=443
ENV c=1080
ENV n=50

WORKDIR /root/
RUN chmod +x /root/run.sh

EXPOSE  443
CMD ["/root/run.sh"]