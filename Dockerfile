FROM nginx:alpine
COPY index.html support.js trip-data.js /usr/share/nginx/html/
EXPOSE 80
