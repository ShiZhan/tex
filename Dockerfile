FROM ubuntu:16.04
MAINTAINER Zhan.Shi <g.shizhan.g@gmail.com>
ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update -q && apt-get install -qy texlive-full texlive-latex-extra gnuplot
RUN apt-get clean && rm -rf /var/lib/apt/lists/*

VOLUME /documents
WORKDIR /documents

CMD ["/sbin/init"]
