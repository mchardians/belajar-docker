# Integrasi container dengan volume
docker container create --name namacontainer --mount "type=volume,source=namavolume,destination=containerpath" image:tag #format
docker container create --name mysqldb --env MYSQL_ROOT_PASSWORD=root --publish 3306:3306 --mount "type=volume,source=mysqlvolume,destination=//var/lib/mysql" mysql:latest #implementasi