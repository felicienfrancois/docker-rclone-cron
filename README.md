# docker-rclone-cron #

setup thought ENVIRONMENT variables :

CRON_EXPRESSION (default to "H * * * *")
RCLONE_COMMAND (default to copy)
SOURCE_PATH required
DEST_PATH required
RCLONE_OPTIONS (default to --checkers 1 --tpslimit 23  --tpslimit-burst 1  --no-traverse --fast-list --update --use-server-modtime)