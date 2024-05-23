# Start from an official Ubuntu base image
FROM ubuntu:20.04

# Prevent interactive prompts during package installation
ENV DEBIAN_FRONTEND=noninteractive

# Update the package list and install Apache
RUN apt update && apt install -y apache2

# Copy the html directory from the host into the image
COPY html /var/www/html/

# Create the buildtime.txt file with the current date
RUN date > /var/www/html/buildtime.txt

# Expose port 80 (Apache default)
EXPOSE 80

# Start Apache in the foreground
CMD ["apache2ctl", "-D", "FOREGROUND"]