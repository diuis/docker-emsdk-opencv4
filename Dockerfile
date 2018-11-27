FROM diuis/docker-emsdk

USER root
RUN apt-get update && apt-get install -y unzip
RUN mkdir /opencv && chown appuser /opencv

USER appuser
RUN wget https://github.com/opencv/opencv/archive/4.0.0.zip -P /home/appuser && \
    unzip /home/appuser/4.0.0.zip -d /opencv/
