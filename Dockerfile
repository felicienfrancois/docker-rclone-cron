FROM rclone/rclone:1.67

ENV CRON_EXPRESSION "H * * * *"
ENV SOURCE_PATH ""
ENV DESC_PATH ""
ENV RCLONE_COMMAND "copy"
ENV RCLONE_OPTIONS "--checkers 1 --tpslimit 23  --tpslimit-burst 1  --no-traverse --fast-list --update --use-server-modtime"

# inspired from https://github.com/AnalogJ/docker-cron
RUN which crond && rm -rf /etc/periodic
COPY entrypoint.sh /entrypoint.sh
COPY crontab.tmpl /crontab.tmpl

ENTRYPOINT ["/entrypoint.sh"]
CMD ["crond", "-f", "-l", "2"]