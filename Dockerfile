FROM centos
RUN yum -y install httpd
COPY files/index.html.orig /var/www/html/index.html
COPY files/httpd.conf.orig /etc/httpd/conf/httpd.conf
EXPOSE 80
ENTRYPOINT ["/usr/sbin/httpd", "-D", "FOREGROUND"]
