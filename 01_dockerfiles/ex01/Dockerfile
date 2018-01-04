FROM debian:latest

RUN apt-get update \
    && apt-get install wget -y \
    && apt-get install bzip2 \
    && mkdir /teamspeak

WORKDIR /teamspeak

EXPOSE

RUN wget -O teamspeak.tar.bz2 http://dl.4players.de/ts/releases/3.0.13.8/teamspeak3-server_linux_amd64-3.0.13.8.tar.bz2 \
    && tar xvfj teamspeak.tar.bz2 \
    && rm teamspeak.tar.bz2 \

WORKDIR /teamspeak/teamspeak3-server_linux_amd64

ENTRYPOINT ["ts3server_minimal_runscript.sh"]
