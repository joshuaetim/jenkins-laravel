FROM jenkins/jenkins:2.257-centos7
USER root
RUN sudo yum -y install https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm
RUN sudo yum -y install https://rpms.remirepo.net/enterprise/remi-release-7.rpm
RUN sudo yum -y install yum-utils
RUN sudo yum-config-manager --enable remi-php74
RUN sudo yum update
RUN sudo yum install php php-mbstring php-xml php-pdo php-pdo_mysql php-xdebug -y
RUN sudo yum update -y 
RUN cd /tmp
RUN curl -sS https://getcomposer.org/installer | php
RUN mv composer.phar /usr/local/bin/composer