FROM ubuntu:20.04

WORKDIR /install

COPY install-deps install-deps 
RUN ./install-deps

RUN useradd ned -m

WORKDIR /home/ned/setup-master

COPY install install 
COPY nvim nvim
COPY screen screen
COPY scripts scripts
COPY tmux tmux

RUN mkdir /home/ned/.config
RUN ./install

