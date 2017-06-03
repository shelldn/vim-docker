FROM ubuntu:latest
MAINTAINER Yevgeny Shirin <yevgeny.shirin@gmail.com>

RUN \
  apt-get update && \
  apt-get install -y git curl vim-nox-py2

RUN \
  mkdir -p ~/.vim/autoload ~/.vim/bundle && \
  curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

COPY .vimrc /root/.vimrc

WORKDIR /root/.vim/bundle

RUN \
  git clone https://github.com/scrooloose/nerdtree && \
  git clone https://github.com/ctrlpvim/ctrlp.vim && \
  git clone https://github.com/vim-airline/vim-airline && \
  git clone https://github.com/Valloric/YouCompleteMe.git && \
  git clone git://github.com/jiangmiao/auto-pairs.git
# TODO: Consider surround.vim installation

# Installing YCM
RUN \
  cd YouCompleteMe && \
  git submodule update --init --recursive && \
  apt-get install -y build-essential cmake python-dev python3-dev && \
  ./install.py

WORKDIR /src
ENV TERM="xterm-256color"

CMD ["vim"]
