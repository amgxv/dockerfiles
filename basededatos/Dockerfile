FROM debian
MAINTAINER amgxv

RUN apt update && apt upgrade -y
RUN apt install -y openssh-server postgresql-9.6 nano sudo

ADD sshd_config /etc/ssh/
ADD postgresql.conf /etc/postgresql/9.6/main/
ADD pg_hba.conf /etc/postgresql/9.6/main/
ADD northwind.postgre.sql /

RUN chown postgres:postgres /etc/postgresql/9.6/
RUN chown postgres:postgres /etc/postgresql/9.6/main/pg_hba.conf
RUN chown postgres:postgres /etc/postgresql/9.6/main/postgresql.conf

RUN /etc/init.d/postgresql start && sudo -u postgres psql -c "CREATE DATABASE northwind" && sudo -u postgres psql northwind < northwind.postgre.sql && sudo -u postgres psql -c "ALTER USER "postgres" WITH PASSWORD '123';"


ENTRYPOINT service ssh start && service postgresql start && bash
