# Start with DIGITS dependencies
FROM kaixhin/digits
MAINTAINER Rui Quintino <https://github.com/rquintino>

#Enable volumes for host persistence
VOLUME /data
VOLUME /jobs

ENV DIGITS_JOBS_DIR=/jobs
ENV DIGITS_LOGFILE_FILENAME=/jobs/digits.log

# Expose server port
EXPOSE 5000
# Set working directory
WORKDIR /root/digits
# Start server
CMD ["./digits-devserver"]
