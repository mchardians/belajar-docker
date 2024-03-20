# Melihat network
docker network ls

# Menambah network
docker network create --driver namadriver namanetwork #format (default=bridge)
docker network create --driver bridge mysqladmin

# Menghapus network
docker network rm namanetwork
docker network rm mysqladmin