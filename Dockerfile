# Use a lightweight Nginx image
FROM nginx:alpine

# Copy all static assets to the Nginx server's public directory
COPY ./project/ /usr/share/nginx/html

# Copy the custom Nginx configuration
COPY nginx.conf /etc/nginx/nginx.conf

# Expose port 80 to the outside world
EXPOSE 80

# Start Nginx when the container launches
CMD ["nginx", "-g", "daemon off;"]
