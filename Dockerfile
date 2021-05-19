FROM ubuntu:20.04
WORKDIR /app
RUN apt-get update && apt-get install -y pdftk
ADD removewatermark.sh .
RUN chmod 775 "removewatermark.sh"
WORKDIR /mnt/work
ENTRYPOINT ["/app/removewatermark.sh"]

