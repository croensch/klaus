FROM amazonlinux:2

RUN amazon-linux-extras install nginx1.12

COPY nginx.conf /etc/nginx/nginx.conf
COPY conf.d /etc/nginx/conf.d
COPY default.d /etc/nginx/default.d

# COPY sites.d /etc/nginx/sites.d

EXPOSE 80

STOPSIGNAL SIGTERM

CMD ["nginx", "-g", "daemon off;"]
