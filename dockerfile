FROM centos
#ADD get-pip.py /tmp/                 
#RUN yum install ansible -y
RUN yum install httpd -y
#RUN yum install sudo -y
COPY index.html /var/www/html/
EXPOSE 80 
CMD ["/usr/sbin/httpd","-D","FOREGROUND"] 
