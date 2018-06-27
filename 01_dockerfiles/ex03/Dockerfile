FROM ubuntu:latest

RUN apt-get update -q \
    && DEBIAN_FRONTEND=noninteractive apt-get install -yq --no-install-recommends \
      ca-certificates \
      openssh-server \
      wget \
      apt-transport-https \
      vim \
      curl \
      postfix

WORKDIR ./

RUN curl -LO https://packages.gitlab.com/install/repositories/gitlab/gitlab-ce/script.deb.sh

RUN bash script.deb.sh

RUN apt-get update && EXTERNAL_URL="http://gitlab.example.com" apt-get install -yq gitlab-ce

RUN apt update && \
	apt install -y tzdata && \
	apt-get clean && \
	rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

EXPOSE 80 22

CMD /opt/gitlab/embedded/bin/runsvdir-start & EXTERNAL_URL="gitlab.example.com" && \
	gitlab-ctl reconfigure && \
	tail -f /dev/null




#docker build -t gitlab .
#docker run -it --rm -p 80:80 -p 21:22 --privileged gitlab
