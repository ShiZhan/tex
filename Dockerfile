FROM phusion/baseimage:0.9.22
MAINTAINER Zhan.Shi <g.shizhan.g@gmail.com>
ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update -q && apt-get install -qy python-software-properties software-properties-common
RUN apt-add-repository ppa:jonathonf/texlive-2017
RUN apt-get install -qy texlive-base texlive-xetex texlive-latex-recommended gnuplot pandoc
RUN apt-get clean && rm -rf /var/lib/apt/lists/*

VOLUME /documents
WORKDIR /documents

CMD ["/sbin/init"]
