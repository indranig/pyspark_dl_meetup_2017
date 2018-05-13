#!/bin/bash

docker build -t meetup-session3-base base/ && \
    docker build -t meetup-session3-spark-base spark-base/ && \
    docker build -t meetup-session3-spark-master spark-master/ && \
    docker build -t meetup-session3-spark-slave spark-slave/ && \
    docker build -t meetup-session3-zeppelin zeppelin/ && \
    docker save -o meetup-session3-spark-master.img meetup-session3-spark-master && \
    docker save -o meetup-session3-spark-slave.img meetup-session3-spark-slave && \
    docker save -o meetup-session3-zeppelin.img meetup-session3-zeppelin