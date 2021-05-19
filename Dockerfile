FROM ubuntu:20.04
RUN apt-get update && apt-get install -y pdftk
ADD removewatermark.sh /app
RUN chmod 775 "/app/removewatermark.sh"
WORKDIR /mnt/work
ENTRYPOINT ["/app/removewatermark.sh"]
