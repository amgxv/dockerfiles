FROM linuxserver/duplicati
MAINTAINER amgxv

RUN apt update && apt upgrade -y
RUN apt install -y sshpass ssh nano rsync net-tools xinetd
RUN mkdir -p /backups_cont
RUN mkdir -p /backups_cont/web
RUN mkdir -p /backups_cont/bd
RUN chmod a+rw /backups_cont
RUN echo "root:123321" | chpasswd

ADD sshd_config /etc/ssh/
ADD rsyncd.conf /etc/
ADD rsyncd.secrets /etc/
ADD rsync /etc/defaults/
ADD /xinetd.d/rsync /etc/xinetd.d/

ENTRYPOINT service ssh start && service xinetd start && bash
