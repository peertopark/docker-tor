FROM debian:jessie
RUN  apt-get update
RUN apt-get install -y tor
WORKDIR /root
EXPOSE 9050
ADD torrc torrc
CMD ["tor", "-f", "torrc"]
