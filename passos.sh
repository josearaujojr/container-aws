curl -fsSL https://get.docker.com -o get-docker.sh
yum install docker -y
systemctl status docker
systemctl start docker

mkdir project
vim Dockerfile
vim index.html

docker build -t project-image .
docker images
docker run -d -p 80:80 --name project-container project-image
docker ps

testar aplicação web http://ip_publico

##### AWS

create repo ECR private
user iam permission e cli

#####
push ECR


aws configure
docker images