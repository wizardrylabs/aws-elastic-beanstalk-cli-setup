FROM ubuntu:20.04

ADD . .

RUN apt-get update -y && apt-get install -y \
  git wget \
  build-essential zlib1g-dev libssl-dev libncurses-dev \
  libffi-dev libsqlite3-dev libreadline-dev libbz2-dev \
  && ./scripts/bundled_installer \
  && echo 'export PATH=/root/.pyenv/versions/3.7.2/bin:$PATH' >> /root/.bash_profile \
  && echo 'export PATH="/root/.ebcli-virtual-env/executables:$PATH"' >> ~/.bash_profile
