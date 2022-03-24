FROM nginx:alpine
RUN rm /usr/share/nginx/html/index.html
COPY index.html /usr/share/nginx/html
RUN mkdir /usr/share/nginx/html/nginx2
COPY index.html /usr/share/nginx/html/nginx2
EXPOSE 80
COPY default.conf /etc/nginx/conf.d
