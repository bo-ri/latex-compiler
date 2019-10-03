FROM ubuntu:18.04

RUN apt-get -y update && apt-get -y upgrade
# RUN apt-get install -y locales \
#     && locale-gen ja_JP.UTF-8 \
#     && echo "export LANG=ja_JP.UTF-8" >> ~/.bashrc
RUN apt-get update && apt-get install -y tzdata
# timezone setting
ENV TZ=Asia/Tokyo 
RUN apt-get install -y language-pack-ja-base language-pack-ja
ENV LANG=ja_JP.UTF-8
RUN apt-get install -y texlive-lang-cjk xdvik-ja evince texlive-fonts-recommended texlive-fonts-extra

WORKDIR /work

CMD platex main.tex && dvipdfmx main.dvi

# docker run -it --rm -v $PWD:/work latex