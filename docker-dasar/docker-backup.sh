# Membuat backup container (general)
docker container run --rm --name namacontainer --mount "type=bind,source=hostpath,destination=containerpath" --mount "type=volume,source=namavolume,destination=containerpath" image:tag tar cvf /path/namafile.tar.gz /volumedestination #format
docker container run --rm --name mysqlbackup --env MYSQL_ROOT_PASSWORD=root --mount "type=bind,source=/d/Users/ASUS/Repositories/Learning/Docker/projects/docker-dasar/backups,destination=/var/empty" --mount "type=volume,source=backup,destination=/var/lib/mysql" mysql:latest tar cvf /var/empty/backup.tar.gz /var/lib/mysql #implementasi

# Membuat backup based on image (MYSQL)
docker container exec some-mysql sh -c "exec mysqldump databasename -uroot -p$MYSQL_ROOT_PASSWORD" > /some/path/on/your/host/all-databases.sql
docker container exec mysqldb bash -c "exec mysqldump userdb -uroot -p$MYSQL_ROOT_PASSWORD" > "D:\Users\ASUS\Repositories\Learning\Docker\projects\docker-dasar\backups\backup.sql"

