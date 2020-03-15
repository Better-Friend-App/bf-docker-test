FROM nginx:stable

RUN apt-get update
RUN apt-get install -y curl openssl bc cron

EXPOSE 80

WORKDIR app

#Delete the default conf and overwrite with our customized one
RUN rm /etc/nginx/conf.d/default.conf
COPY nginx.conf /etc/nginx/conf.d/default.conf