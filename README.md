## nginx
### Tags
* [`latest`](amzn-nginx/latest/Dockerfile) (1.16)
* [`latest-php`](amzn-nginx/latest-php/Dockerfile) (1.16)
* [`stable`](amzn-nginx/stable/Dockerfile) (1.12) EOL
* [`stable-php`](amzn-nginx/stable-php/Dockerfile) (1.12) EOL
### Info
Default www-root: `/usr/share/nginx/html`.
Server in `/etc/nginx/nginx.conf`, but overwrite in `/etc/nginx/conf.d/default.conf`.
#### PHP
Default www-root: `/var/www/html`.
Server in `/etc/nginx/nginx.conf`, but overwrite in `/etc/nginx/conf.d/default.conf`.
Don't forget to include `default_server` and `include` of further defaults:
```
server {
    listen 80 default_server;

    // ...

    include /etc/nginx/default.d/*.conf;
}
```

## node
### Tags
* [`14`, `latest`](amzn-node/14/Dockerfile)
* [`13`](amzn-node/13/Dockerfile)
* [`12`](amzn-node/12/Dockerfile)
* [`10`](amzn-node/10/Dockerfile)

## php
### Tags
* [`8.0-cli`, `cli`, `latest`](amzn-php/7.3/cli/Dockerfile)
* [`8.0-fpm`, `fpm`](amzn-php/7.3/fpm/Dockerfile)
* [`7.4-cli`](amzn-php/7.3/cli/Dockerfile)
* [`7.4-fpm`](amzn-php/7.3/fpm/Dockerfile)
* [`7.3-cli`](amzn-php/7.3/cli/Dockerfile)
* [`7.3-fpm`](amzn-php/7.3/fpm/Dockerfile)
* [`7.2-cli`](amzn-php/7.2/cli/Dockerfile) EOL
* [`7.2-fpm`](amzn-php/7.2/fpm/Dockerfile) EOL
* [`7.1-cli`](amzn-php/7.1/cli/Dockerfile) EOL
* [`7.1-fpm`](amzn-php/7.1/fpm/Dockerfile) EOL

## python
### tags
* [`latest`](amzn-python/Dockerfile) (3.7)


# *- Klaus*
![the orange fish](https://upload.wikimedia.org/wikipedia/en/2/24/An_image_of_Klaus_Heissler_in_a_water_bowl.png)
