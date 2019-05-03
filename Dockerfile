FROM ubuntu

COPY . ~/.vim
RUN apt update && apt install -y vim ctags git \
      && ln -s ~/.vim/vimrc ~/.vimrc 

WORKDIR ~/.vim
RUN git submodule init \
      && git submodule update

