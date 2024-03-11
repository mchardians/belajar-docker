# Container port forwarding ke sistem host
docker container create --name namacontainer --publish porthost:portcontainer image:tag #format
docker container create --name nginxserver --publish 8080:80 nginx:latest #implementasi