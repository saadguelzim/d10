# Drupal + Nginx + MySQL Docker Setup

This setup provides a basic Drupal environment using Docker, Nginx as a web server, and MySQL as a database.

## Prerequisites

- Docker
- Docker Compose

## Setup

1. Clone the repository.
2. Create a `.env` file based on the provided `.env.example` and set your environment variables.
3. Run `docker-compose up -d` to start the containers.
4. Access Drupal at `http://localhost:8080`.

## Services

- **Drupal**: The application service, running Drupal 10.
- **MySQL**: Database service.
- **Nginx**: Web server that serves Drupal and proxies requests to PHP-FPM.

## Customization

- **nginx.conf**: Modify this file to change the Nginx configuration.
- **Dockerfile**: Customize the Drupal container if necessary.
- **.env**: Manage your environment variables here.
