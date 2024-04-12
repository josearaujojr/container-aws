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
aws ecr get-login-password --region us-east-1 | docker login --username AWS --password-stdin 637423622533.dkr.ecr.us-east-1.amazonaws.com
docker tag project-image:latest 637423622533.dkr.ecr.us-east-1.amazonaws.com/image-container:latest

aws configure
docker images