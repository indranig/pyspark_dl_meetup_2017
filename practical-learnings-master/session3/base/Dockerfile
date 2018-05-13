FROM debian:jessie

# CURL & GIT & OTHER DEPENDENCIES
RUN apt-get update && apt-get install -y xz-utils curl git libfontconfig build-essential wget bzip2 && apt-get clean && rm -rf /var/lib/apt/lists

# NODE
RUN wget https://nodejs.org/dist/v6.10.1/node-v6.10.1-linux-x64.tar.xz && \
  tar xvf node-v6.10.1-linux-x64.tar.xz && \
  rm node-v6.10.1-linux-x64.tar.xz
ENV NODE_HOME /node-v6.10.1-linux-x64
ENV PATH $PATH:$NODE_HOME/bin

# JDK
RUN apt-get update && apt-get install -y openjdk-7-jdk && apt-get clean && rm -rf /var/lib/apt/lists
ENV JDK_HOME /usr/lib/jvm/java-1.7.0-openjdk-amd64
ENV JAVA_HOME /usr/lib/jvm/java-1.7.0-openjdk-amd64
ENV PATH $PATH:$JDK_HOME/bin

# MAVEN
ENV MAVEN_VERSION 3.3.9
ENV MAVEN_HOME /usr/apache-maven-$MAVEN_VERSION
ENV PATH $PATH:$MAVEN_HOME/bin
RUN curl -sL http://archive.apache.org/dist/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz \
  | gunzip \
  | tar x -C /usr/ \
  && ln -s $MAVEN_HOME /usr/maven

# PYTHON
RUN apt-get update && \
  apt-get install -y python python-dev && \
  apt-get clean && \
  rm -rf /var/lib/apt/lists

# PIP
RUN curl https://bootstrap.pypa.io/get-pip.py | python

# PY4J
RUN python -m pip install py4j

# PYYAML
RUN python -m pip install pyyaml

# TENSORFLOW
RUN python -m pip install --upgrade --ignore-installed tensorflow

# MATPLOTLIB
RUN python -m pip install matplotlib
