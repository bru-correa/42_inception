FROM debian:bullseye

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update &&\
  apt-get install -y \
  nginx=1.18.0-6.1+deb11u3 \
  openssl=1.1.1w-0+deb11u1 \
  --no-install-recommends && \
  rm -rf /var/lib/apt/lists/* && \
  mkdir -p /etc/nginx/ssl

COPY ./conf/nginx.conf /etc/nginx

COPY ./tools/create-cert.sh /tmp

RUN chmod +x /tmp/create-cert.sh && /tmp/create-cert.sh

EXPOSE 443

CMD ["nginx", "-g", "daemon off;"]
