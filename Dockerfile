FROM circleci/ruby:2.5.3

RUN set -ex && \
    sudo apt-get -y -qq update && sudo apt-get install -y \
    python-pip \
    python-dev build-essential

RUN sudo pip install --upgrade setuptools && \
    sudo pip install awsebcli --upgrade

RUN gem install rebi

