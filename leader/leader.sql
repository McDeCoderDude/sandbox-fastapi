SET GLOBAL host_cache_size=0;

CREATE USER IF NOT EXISTS 'replicator'@'%' IDENTIFIED BY 'replicator@@123';
GRANT REPLICATION SLAVE ON *.* TO 'replicator'@'%';

FLUSH PRIVILEGES;