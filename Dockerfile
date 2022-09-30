FROM nginx:1.23.1-alpine

MAINTAINER Kaushik, Gunasekaran(gtskaushik@gmail.com)

# Copy nginx conf
COPY ./nginx.conf /etc/nginx/conf.d/default.conf

# Copy the final binaries
COPY ./dist/* /usr/share/nginx/html

# Open the nginx port for traffic
EXPOSE 80
