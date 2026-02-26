# Use lightweight nginx image
FROM nginx:alpine

# Remove default nginx files
RUN rm -rf /usr/share/nginx/html/*

# Copy current folder files into nginx public folder
COPY . /usr/share/nginx/html

# Expose port (Railway automatically handles $PORT)
EXPOSE 80

# Start nginx
CMD ["nginx", "-g", "daemon off;"]
