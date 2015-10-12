FROM debian:wheezy
MAINTAINER Markus Mayer <widemeadows@gmail.com>

RUN apt-get update \
	&& apt-get install -y curl \
	&& rm -rf /var/lib/apt/lists/*

RUN apt-key adv --keyserver hkp://pgp.mit.edu:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF

RUN echo "deb http://download.mono-project.com/repo/debian nightly main" > /etc/apt/sources.list.d/mono-nightly.list
RUN apt-get update
RUN apt-get install -y mono-devel ca-certificates-mono
RUN rm -rf /var/lib/apt/lists/*