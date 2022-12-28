#!/bin/sh
if [ ! -f UUID ]; then
  UUID="7fd4fa5b-5e22-443b-b991-92e61755fc96"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

