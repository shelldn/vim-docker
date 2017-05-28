FROM ubuntu:latest
MAINTAINER Yevgeny Shirin <yevgeny.shirin@gmail.com>

RUN mkdir -p /root/.vim/bundle

RUN \
  apt-get update && \
  apt-get install -y git vim-nox-py2

ADD .vimrc /root/.vimrc

RUN \
  git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim && \
  vim +PluginInstall +qa

CMD ["vim"]
