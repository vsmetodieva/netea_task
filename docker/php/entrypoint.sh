#!/bin/bash
set -e

if [[ ! -z "$DISABLE_XDEBUG" && "$DISABLE_XDEBUG" = true && -f "/usr/local/etc/php/conf.d/xdebug.ini" ]]; then

mv /usr/local/etc/php/conf.d/xdebug.ini /usr/local/etc/php/conf.d/xdebug.ini.disable

cat >&2 <<EOF
⚠️   xDebug is disabled
EOF

elif [[ -z "$DISABLE_XDEBUG" || "$DISABLE_XDEBUG" = false && -f "/usr/local/etc/php/conf.d/xdebug.ini.disable" ]]; then
mv /usr/local/etc/php/conf.d/xdebug.ini.disable /usr/local/etc/php/conf.d/xdebug.ini
fi

exec "$@"
