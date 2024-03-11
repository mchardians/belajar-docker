# Melihat seluruh container
docker container ls -a
# Melihat container aktif
docker container ls

# Membuat container
docker container create --name namacontainer image:tag #format
docker container create --name nginxserver nginx:latest #implementasi

# Menjalankan container
docker container start namacontainer #format (nama container/ID container)
docker container start nginxserver #implementasi

# Menghentikan container
docker container stop namacontainer #format (nama container/ID container)
docker container stop nginxserver #implementasi

# Menghapus container
docker container rm namacontainer #format (nama container/ID container)
docker container rm nginxserver #contoh penggunaan