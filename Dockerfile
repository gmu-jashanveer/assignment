# Dhruvi Pruthvisinh Rathod - G01465151
# Jashanveer Singh - G01477180
# Namita Chougule – G01473740

# Use the pre-built image from Docker Hub as the base image
FROM jashanveer/survey-web-app:latest

# Expose port 80 to make your web server accessible
EXPOSE 80

# Start the application (if needed, ensure your entry point is correct)
CMD ["nginx", "-g", "daemon off;"]
