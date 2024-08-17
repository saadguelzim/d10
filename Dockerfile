# Use the official Drupal image as a base
FROM drupal:10

# Install additional PHP extensions if needed
RUN apt-get update && apt-get install -y \
    libpng-dev \
    libjpeg-dev \
    && docker-php-ext-configure gd --with-jpeg \
    && docker-php-ext-install gd

# Copy any custom files or scripts into the container
COPY custom-scripts/ /usr/local/bin/

# Set any necessary environment variables
ENV CUSTOM_VAR=custom_value

# Expose the port if running standalone
EXPOSE 80
