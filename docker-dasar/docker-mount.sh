# Melakukan mounting container ke host
docker container create --name namacontainer --mount "type=bind,source=hostpath,destination=containerpath" image:tag #format
docker container create --name mysqldb --env MYSQL_ROOT_PASSWORD=root --mount "type=bind,source=/d/Users/ASUS/Projects/Learning/Docker/projects/docker-dasar/backups,destination=/var/lib/mysql" --publish 3306:3306 mysql:latest #implementasi