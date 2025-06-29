# Use Nginx to serve static content
FROM nginx:alpine

# Remove the default Nginx static files
RUN rm -rf /usr/share/nginx/html/*

# Copy custom static files
COPY . /usr/share/nginx/html

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]

