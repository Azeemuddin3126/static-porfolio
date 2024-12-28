# syntax=docker/dockerfile:1

################################################################################
# Final stage for serving the static files using a lightweight web server.
FROM nginx:alpine AS final

# Copy static files and assets into the nginx document root.
# Adjust paths based on your project structure.
COPY static /usr/share/nginx/html/
COPY assets /usr/share/nginx/html/assets/
COPY css /usr/share/nginx/html/css/
COPY js /usr/share/nginx/html/js/

# Expose port 80 to serve the web app.
EXPOSE 80

# Default nginx command serves the files.
# kind load docker-image salmaan21/statiwebapp:latest --name my-cluster
