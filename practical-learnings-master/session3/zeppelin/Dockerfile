FROM meetup-session3-base

# ZEPPELIN
RUN wget http://apache.forsale.plus/zeppelin/zeppelin-0.7.1/zeppelin-0.7.1-bin-all.tgz && \
  tar xvf zeppelin-0.7.1-bin-all.tgz && \
  rm zeppelin-0.7.1-bin-all.tgz

WORKDIR /zeppelin-0.7.1-bin-all

CMD bin/zeppelin.sh