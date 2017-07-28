FROM rocker/r-base

# Install external dependencies 
RUN apt-get update -qq \ 
  && apt-get install -t unstable -y --no-install-recommends \
    libcurl4-openssl-dev \
    libssl-dev \
    libsqlite3-dev \
    libxml2-dev \
    qpdf \
    vim \
    git \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/ \
  && rm -rf /tmp/downloaded_packages/ /tmp/*.rds


RUN Rscript -e 'install.packages("devtools",dependencies=TRUE)'
RUN Rscript -e 'devtools::install_github("bwlewis/doRedis")'

#RUN install.r foreach
#RUN install.r rredis
#RUN install.r doRedis
#RUN install.r Matrix

RUN install.r data.table
RUN install.r caret
RUN install.r xgboost
RUN install.r pROC

COPY container-home /usr/local/src/container-home/

WORKDIR /usr/local/src/container-home

CMD ["/bin/bash", "start.sh"]
