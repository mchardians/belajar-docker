# Melakukan restore backup
docker container run --rm --name namacontainer --mount "type=bind,source=hostpath,destination=containerpath" --mount "type=volume,source=namavolume,destination=containerpath" image:tag bash -c "cd containerpath && tar xvf /backuppath --strip 1" #format
docker container run --rm --name mysqlrestore --mount "type=bind,source=/d/Users/ASUS/Repositories/Learning/Docker/projects/docker-dasar/backups,destination=/var/empty" --mount "type=volume,source=mysqlrestore,destination=/var/lib/mysql" mysql:latest bash -c "cd var/lib/mysql && tar xvf /var/empty/backup.tar.gz --strip 1" #implementasi

# Restore database MYSQL
docker exec -i some-mysql sh -c 'exec mysql -uroot -p"$MYSQL_ROOT_PASSWORD"' < /some/path/on/your/host/all-databases.sql #format
docker exec -i mysqldb sh -c "exec mysql -u root -p$MYSQL_ROOT_PASSWORD userdb" < "D:\Users\ASUS\Repositories\Learning\Docker\projects\docker-dasar\backups\backup.sql" #implementasi