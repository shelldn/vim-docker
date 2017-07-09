FROM shelldn/vim:latest
MAINTAINER Yevgeny Shirin <yevgeny.shirin@gmail.com>

# COPY .vimrc /root/.vimrc

# Requirement : Mono
RUN \
  apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF && \
  echo "deb http://download.mono-project.com/repo/ubuntu xenial main" | tee /etc/apt/sources.list.d/mono-official.list && \
  apt-get update && \
  apt-get install -y mono-complete

# Requirement : F#
RUN \
  apt-get update && \
  apt-get install -y fsharp  

# Install
WORKDIR /root/.vim/bundle

RUN \
  git clone https://github.com/fsharp/vim-fsharp.git && \
  cd vim-fsharp && \
  make

WORKDIR /src
