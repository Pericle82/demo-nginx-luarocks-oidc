FROM bitnami/openresty

USER 0
RUN install_packages luarocks

RUN luarocks install lua-resty-http
RUN luarocks install lua-resty-jwt
RUN luarocks install lua-resty-session
RUN luarocks install lua-resty-openidc

COPY my_server_block.conf /opt/bitnami/openresty/nginx/conf/server_blocks/

USER 1001