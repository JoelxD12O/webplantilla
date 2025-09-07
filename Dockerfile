# Use an official lightweight web server image
FROM nginx:alpine

# Set working directory
WORKDIR /usr/share/nginx/html

# Remove default nginx static assets
RUN rm -rf /usr/share/nginx/html/*

# Copy all website files to nginx html directory
COPY . /usr/share/nginx/html

# Expose port 80
EXPOSE 80

# No CMD needed, nginx runs by default
