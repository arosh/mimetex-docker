FROM httpd:2.4-bullseye
# https://pythonspeed.com/articles/security-updates-in-docker/
RUN apt-get update \
  && apt-get -y upgrade \
  && apt-get install -y --no-install-recommends \
     mimetex \
  && rm -rf /var/lib/apt/lists/* \
  && rm /usr/local/apache2/htdocs/index.html
COPY httpd.conf /usr/local/apache2/conf/httpd.conf
