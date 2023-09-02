# Use an official nginx runtime as a parent image
FROM nginx:latest

# Set the working directory in the container
WORKDIR /usr/share/nginx/html

# Copy all the website files to the container
COPY . .

# Expose port 80 for the web server
EXPOSE 80

# Start the nginx web server
CMD ["nginx", "-g", "daemon off;"]
