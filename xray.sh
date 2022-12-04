#!/bin/sh
if [ ! -f UUID ]; then
  UUID="b81a70ad-cfce-4f73-ad35-a4c3dc841e86"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

