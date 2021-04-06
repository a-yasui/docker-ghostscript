#!/bin/sh
set -e

image="${namespace:-atyasu}/ghostscript"
versions="
9
latest
"

build() {
    docker buildx build $docker_opts --platform linux/amd64,linux/arm64 -t "$image:$1" --push "$(dirname $0)"
}

case "$1" in
    --versions) echo "$versions" | awk 'NF' | cut -d';' -f1;;
    '') echo "$versions" | grep -v "^$" | while read -r version; do IFS=';'; build $version; done;;
    *) args="$(echo "$versions" | grep -E "^$1(;|$)")"; if [ -n "$args" ]; then IFS=';'; build $args; else echo "Version $1 does not exist." >/dev/stderr; exit 1; fi
esac
