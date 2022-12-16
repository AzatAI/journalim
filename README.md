

<p align="center">
  <a href="https://github.com/AzatAI/journalim-protocol">
    <img src="resources/journalim-logo.png" alt="Logo" width="200" height="200">
  </a>


  <h3 align="center">Journalim ✨</h3>

  <p align="center">
    Publish as you wish.
    <br /><br>
    <a href="https://github.com/AzatAI/journalim-protocol"><strong>Journalim Protocol »</strong></a><br>
    <a href="https://github.com/AzatAI/journalim-protocol"><strong>Journalim Backend Services »</strong></a><br>
    <a href="https://github.com/AzatAI/journalim-protocol"><strong>Journalim Mobile App »</strong></a><br>
    <br />
    <br />
    <a href="https://github.com/AzatAI/journalim-protocol">Protocol Home</a>
    ·
    <a href="https://github.com/AzatAI/journalim-protocol/issues">Report Bug</a>
    ·
    <a href="https://github.com/AzatAI/journalim-protocol/issues">Request Feature</a>
  </p>




## What is this

“ Journalim Protocol ” is simply a series of REST API design rules, where all nececcary end points with the standard name should be implemented on the backend, and by doing so, all frontend or mobile clients will able to search, detect and present underlying documents and informations.

## Where to use

You can use ` Journalim` for education, or your business in respect to our license agreement. Journalim is mainly designed for publishings as PDF documents, journalim can also carry text oriendted posts, events etc. 

You might find many other ways to use journalim for your next project, one simple use case is using journalim as your personal blog.

## How to use

Simply implement all end points shown in the ‘Endpoints and Standards’ section, or you can deploy the “JBS (Journalim Backend Service)” which is provided as a minimum implementation of the protocol. 

Check here regularly, as we have a plan to implment the Journalim Frontend for Android and iOS platforms.

### Backend

#### Deploy on localhost

The simplest way to deploy JBS on local host is by using `Docker`:

```
version: '3.9'

services:
  api:
    build: .
    command: bash -c 'while !</dev/tcp/db/5432; do sleep 1; done; uvicorn app.main:app --proxy-headers --host 0.0.0.0 --port 80'
    volumes:
      - .:/app
    ports:
      - 8008:8000
    environment:
      - PROJECT_NAME=JBS Backend Service
      - PROJECT_VERSION=0.0.1
      - PROJECT_DESCRIPTION=Journalim Protocol Compatible Backend Service
      - SUPER_ADMIN_USERNAME=YOUR ADMIN USERNAME
      - SUPER_ADMIN_PASSWORD=YOUR ADMIN PASSWORD
      - SUPER_ADMIN_EMAIL=YOUR ADMIN EMAIL
      - DATABASE_URL=postgresql+asyncpg://postgres:postgres@db:5432/journalim
  db:
    image: postgres:latest
    volumes:
      - postgres_data:/var/lib/postgresql/data/
    ports:
      - 8007:5432
    environment:
      - POSTGRES_USER=postgres
      - POSTGRES_PASSWORD=postgres
      - POSTGRES_DB=journalim


volumes:
  postgres_data:
```

#### Deploy with Traefik

Deploying on servers are relatively complex than running on localhost. Here we show the minimum deployment labels for Traefik

```yml
labels:
      # Enable Traefik for this specific "journali-api" service
      - traefik.enable=true
      # Define the port inside of the Docker Service to use
      - traefik.http.services.app.loadbalancer.server.port=80
      # Make Traefik use this domain in HTTP
      - traefik.http.routers.app-http.entrypoints=http
      - traefik.http.routers.app-http.rule=Host(`journalim.gepsoz.com`)
      # Use the trafik-public network (declared below)
      - traefik.docker.network=traefik-public
    networks:
      # Use the public network created to be shared between Traefik
      # any other service that needs to be publicly available
      - traefik-public
      # This network named Journalim is only shared between services in this docker compose.
      - journalim
```

### Clients

### Frontend

`cd` to `clients` for details.

JBS provides client libraries in the following languages:

- Dart 
- Javascript 
- JAVA
- Kotlin
- Python3
- Swift5
- Typescript
  - with `axios`
  - with `fetch`

## Standards

Standards are coming.

## Contributions

Contributions are welcomed. I am planning a new docs for developers explaining the sowftware architecture, development dependencies and etc, stay connected.

## Licenses

Journalim Protocol Licensed Under MIT.

Journalim Backend Services Licensed Under LGPLv3 for Personal Use, for commercial, it is under AzatAI Commercial Licence Agreement (AzatAI CLA), for educational and academic purposes you can also apply for AzatAI Educational License Agreement (AzatAI ELA).

