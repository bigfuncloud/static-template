#!/bin/bash

reflex -s -- sh -c "invalidate-devserver" &

docker run -i --rm -p 80:80 \
            --name caddy \
            -v $PWD/src/:/src \
            -v $PWD/Caddyfile:/etc/caddy/Caddyfile \
            -v caddy_data:/data \
            caddy
