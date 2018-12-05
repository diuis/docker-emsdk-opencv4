FROM diuis/docker-emsdk-installed-python2:v1.0.3

USER root
RUN apt-get update && apt-get install --no-install-recommends -y unzip && \
    apt-get autoremove && apt-get clean

RUN mkdir /opencv && chown appuser /opencv

USER appuser
RUN wget https://github.com/opencv/opencv/archive/4.0.0.zip -P /home/appuser && \
    unzip /home/appuser/4.0.0.zip -d /opencv/
