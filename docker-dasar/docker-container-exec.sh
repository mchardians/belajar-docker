# Mengeksekusi kode program di dalam container
docker container exec -i -t namacontainer bash "commands" #format || -i (menjaga input tetap aktif) || -t (TTY terminal akses)
docker container exec -i -t mysqldb bash -c "exec mysql -u root -p$MYSQL_ROOT_PASSWORD" #implementasi