FROM nginx:alpine

# Copy nginx config
COPY nginx.conf /etc/nginx/nginx.conf

# Copy the BUILD folder (from your React Main Project)
# Make sure you renamed your 'dist' folder to 'build' or update this line
COPY build /usr/share/nginx/html

EXPOSE 8080
CMD ["nginx", "-g", "daemon off;"]