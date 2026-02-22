# Use lightweight Nginx image
FROM nginx:alpine

# Remove default static files
RUN rm -rf /usr/share/nginx/html/*

# Copy your static files into the container
COPY ./public /usr/share/nginx/html

# Optional: copy custom nginx.conf
# COPY nginx.conf /etc/nginx/conf.d/default.conf

# Expose port 80
EXPOSE 80

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]
