FROM meetup-session3-base

# DAEMON TOOLS FOR SUPERVISE
RUN apt-get update && apt-get install -y daemontools && apt-get clean && rm -rf /var/lib/apt/lists

# SPARK
RUN wget http://d3kbcqa49mib13.cloudfront.net/spark-2.1.0-bin-hadoop2.7.tgz && \
  tar xvf spark-2.1.0-bin-hadoop2.7.tgz && \
  rm spark-2.1.0-bin-hadoop2.7.tgz

WORKDIR /spark-2.1.0-bin-hadoop2.7
ENV SPARK_HOME /spark-2.1.0-bin-hadoop2.7