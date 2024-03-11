# Menambah container environtment variable
docker container create --name namacontainer --env KEY=value image:tag #format (--env or -e)
docker container create --name mysqldb --env MYSQL_ROOT_PASSWORD=root --publish 3306:3306 mysql:latest #implementasi