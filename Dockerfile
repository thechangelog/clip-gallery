FROM nginx:alpine

# Remove Nginx's default index file
RUN rm /usr/share/nginx/html/index.html

COPY nginx.conf /etc/nginx/nginx.conf
COPY ./videos /usr/share/nginx/html/
COPY ./images /usr/share/nginx/html/images/
COPY ./player.html /usr/share/nginx/html/player.html

EXPOSE 8888

CMD ["nginx", "-g", "daemon off;"]
