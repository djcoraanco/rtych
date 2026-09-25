FROM nginx:stable-alpine

# Copy static site into nginx html folder
COPY . /usr/share/nginx/html

# Ensure nginx serves at container port 80
EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
