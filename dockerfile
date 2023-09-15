FROM ubuntu:20.04

WORKDIR /install

RUN apt-get update -y 
RUN apt-get upgrade -y 

RUN apt-get install -y \
    stow \
    tmux \
    screen \
    fzf 

COPY install install 
COPY nvim nvim
COPY screen screen
COPY scripts scripts
COPY tmux tmux


RUN ./install

CMD ["sleep", "infinity"]
