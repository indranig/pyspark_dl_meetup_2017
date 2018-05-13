FROM meetup-session3-spark-base

ENV SPARK_WORKER_CORES 1
ENV SPARK_WORKER_MEMORY 256M
ENV SPARK_MASTER spark-master

COPY run ./run

CMD ["supervise", "."]