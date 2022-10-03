# docker/apache/Dockerfile
FROM httpd:2.4.39

COPY netea.apache.conf /usr/local/apache2/conf/netea.apache.conf

RUN echo "Include /usr/local/apache2/conf/netea.apache.conf" \
    >> /usr/local/apache2/conf/httpd.conf
