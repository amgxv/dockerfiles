FROM debian
MAINTAINER amgxv

RUN apt update && apt upgrade -y 
RUN apt install -y proftpd openssh-server toilet lighttpd nano net-tools

ADD website/ /var/www/html/
ADD shadow /etc/
ADD passwd /etc/
ADD group /etc/
ADD home /home/
ADD public_ftp /public_ftp/
ADD proftpd.conf /etc/proftpd/
ADD chownusers.sh /

RUN sh chownusers.sh
RUN chgrp pf_users public_ftp/
RUN chmod 774 public_ftp/
RUN chgrp webmasters /var/www/html
RUN chmod 770 /var/www/html

ENTRYPOINT service proftpd start && service lighttpd start && service ssh start && /bin/bash

RUN toilet --gay Ready!


