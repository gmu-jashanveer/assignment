FROM nginx:alpine

# Copy survey.html and student.jpg to the Nginx HTML directory
COPY survey.html /usr/share/nginx/html/index.html
COPY student.jpg /usr/share/nginx/html/student.jpg

# Start Nginx server
CMD ["nginx", "-g", "daemon off;"]
