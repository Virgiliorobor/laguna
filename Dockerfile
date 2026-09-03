FROM nginx:alpine
COPY index.html support.js trip-data.js /usr/share/nginx/html/
COPY vendor /usr/share/nginx/html/vendor
EXPOSE 80
