FROM ubuntu:20.04
MAINTAINER "Magnus Ullberg <magnus@ullberg.us>

RUN apt-get update
RUN apt-get -y install software-properties-common
RUN add-apt-repository -y ppa:git-core/ppa
RUN apt -y install python3.8 python3.8-dev python3.8-venv python3-pip git openjdk-11-jre-headless build-essential
RUN python3.8 -m pip install -U pip setuptools wheel
RUN python3.8 -m pip install -U Red-DiscordBot

ENTRYPOINT ["/usr/local/bin/redbot"]
