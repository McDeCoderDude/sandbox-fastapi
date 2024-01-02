SET GLOBAL host_cache_size=0;
SET GLOBAL read_only=ON;

CHANGE REPLICATION SOURCE TO
    SOURCE_HOST = 'mysql-leader',
    SOURCE_LOG_FILE='mysql-bin.000003',
    SOURCE_LOG_POS=157;

START REPLICA SQL_THREAD USER='replicator' PASSWORD='replicator@@123' DEFAULT_AUTH='mysql_native_password';