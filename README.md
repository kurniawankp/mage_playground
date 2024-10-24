# Mage Playgroun 

### Requirement
Install [Docker](https://www.docker.com/get-started/)

### Usage
- Rename .env.example to .env
- Set the environment variable
 ```bash
export ENV_FILE=.env
```
- Create a network if not created yet. See at networks section in docker-compose file
```bash
docker network create data_connection
```
- Build image
```bash
docker compose build --no-cache
```
- To start the container
```bash
docker compose up -d
```
- To stop the container

```bash
docker compose down
```
if browser does not started automatically, open browser manually and visit [localhost:6789](localhost:6789)
Use default email and password to log in