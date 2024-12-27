FROM nginx:alpine

# Copy everything into NGINX's default directory
COPY ./static /usr/share/nginx/html/
COPY ./css /usr/share/nginx/html/css/
COPY ./js /usr/share/nginx/html/js/
COPY ./assets /usr/share/nginx/html/assets/

# Expose port 80
EXPOSE 8100

CMD ["nginx", "-g", "daemon off;"]
