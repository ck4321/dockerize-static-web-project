FROM nginx:stable

# create directories
RUN mkdir -p /usr/src/todoapp

# copy files
COPY . /usr/src/todoapp
COPY ./nginx.conf /etc/nginx/conf.d/default.conf

RUN mkdir -p /var/www/html
RUN cp -r /usr/src/todoapp/* /var/www/html
#RUN nginx -c /etc/nginx/conf.d/rudolf.conf
RUN nginx

