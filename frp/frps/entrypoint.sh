#!/bin/sh

set -e

sed -i "s#\"BIND_PORT\"#${BIND_PORT:-9000}#g" frps.toml
sed -i "s#\"V_HOST_HTTP_PORT\"#${V_HOST_HTTP_PORT:-10000}#g" frps.toml

exec "$@"
