FROM httpd:2.4.41
RUN apt-get update && apt-get install -y --no-install-recommends \
    mimetex \
  && rm -rf /var/lib/apt/lists/*
COPY httpd.conf /usr/local/apache2/conf/httpd.conf
RUN rm /usr/local/apache2/htdocs/index.html
EXPOSE 80
