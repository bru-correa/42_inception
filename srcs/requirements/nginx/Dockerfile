FROM alpine:3.19.0

RUN apk update && apk add nginx=1.24.0-r14 --no-cache
RUN adduser -D -g 'bcorrea' bcorrea && mkdir -p /home/bcorrea/data \
	&& chown -R bcorrea:bcorrea /var/lib/nginx && chown -R bcorrea:bcorrea /home/bcorrea

COPY ./nginx.conf /etc/nginx/nginx.conf
COPY ./index.html /home/bcorrea/data/index.html
COPY ./cert.pem /etc/nginx/ssl/cert.pem
COPY ./key.pem /etc/nginx/ssl/key.pem

EXPOSE 443
CMD ["nginx", "-g", "daemon off;"]
