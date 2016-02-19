FROM debian:wheezy
MAINTAINER Markus Mayer <widemeadows@gmail.com>

ENV MONO_VERSION 4.3.3.744
ENV DEBIAN_MONO_VERSION 4.3.3.744-0nightly2

RUN apt-get update \
	&& apt-get install -y curl \
	&& rm -rf /var/lib/apt/lists/*

RUN apt-key adv --keyserver hkp://pgp.mit.edu:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF

RUN echo "deb http://download.mono-project.com/repo/debian nightly main" > /etc/apt/sources.list.d/mono-nightly.list
RUN apt-get update
RUN apt-get install -y mono-devel=$DEBIAN_MONO_VERSION ca-certificates-mono
RUN rm -rf /var/lib/apt/lists/*
