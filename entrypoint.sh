#!/bin/sh

env >> /etc/environment

envsubst '$CRON_EXPRESSION,$RCLONE_COMMAND,$SOURCE_PATH,$DEST_PATH,$RCLONE_OPTIONS' < /crontab.tmpl > /etc/crontab

# execute CMD
echo "$@"
exec "$@"