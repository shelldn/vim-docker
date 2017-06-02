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
  git clone https://github.com/morhetz/gruvbox && \
  git clone https://github.com/scrooloose/nerdtree && \
  git clone https://github.com/ctrlpvim/ctrlp.vim && \
  git clone https://github.com/vim-airline/vim-airline

WORKDIR /src
ENV TERM="xterm-256color"

CMD ["vim"]
