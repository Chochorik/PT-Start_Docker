FROM postgres:latest

COPY init.sql /docker-entrypoint-initdb.d/

RUN echo "host replication all 0.0.0.0/0 md5" >> /usr/share/postgresql/16/pg_hba.conf.sample

CMD ["postgres", "-c", "wal_level=replica", "-c", "hot_standby=on", "-c", "max_wal_senders=10", "-c", "max_replication_slots=10", "-c", "hot_standby_feedback=on", "-c", "log_replication_commands=on"]



