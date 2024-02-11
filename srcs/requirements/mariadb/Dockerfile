FROM debian:bullseye

RUN apt-get update && \
  apt-get install -y \
  mariadb-server=1:10.5.23-0+deb11u1 \
  mariadb-client=1:10.5.23-0+deb11u1 \
  --no-install-recommends && \
  rm -rf /var/lib/apt/lists/* && \
  mkdir -p /var/run/mysqld && \
  chown -R mysql:mysql /var/run/mysqld && \
  chown -R mysql:mysql /etc/mysql && \
  chown -R mysql:mysql /tmp

COPY --chown=mysql:mysql ./conf/init.sql /tmp
COPY --chown=mysql:mysql ./conf/my.cnf /etc/mysql
COPY --chown=mysql:mysql ./tools/entrypoint.sh /tmp

USER mysql

EXPOSE 3306

ENTRYPOINT [ "/bin/bash", "/tmp/entrypoint.sh" ]
