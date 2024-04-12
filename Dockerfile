FROM debian:latest
RUN apt-get update && apt-get upgrade -y
RUN apt-get install nginx -y
CMD ["nginx", "-g", "daemon off;"]
COPY index.html /var/www/html/
EXPOSE 80