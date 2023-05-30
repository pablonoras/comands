## Docker (https://github.com/nschurmann/mongoapp-curso-docker)

### Download images from registery
    $ docker pull --platform {platform_name}
    $ docker pull python:3.9 (descargar una versión particular)

### Images management
    $ docker build -t {name_app:version} {path, solo un . si te encuentra en el mismo path donde est el Dockerfile} (crear imagenes a partir de un archivo Dockerfile) 
    $ docker build -t {image_name}:{version} -f docker/{dockerfile} .  (build de una imagen en otro path y otro nombre de archivo)
    $ docker image rm python:3.9 (eliminar una imagen)
    $ docker images (muestra las imagenes descargadas)
    
### Container management
    $ docker rm {container_name} (remover los contenedores)
    $ docker create --name {container_name que quieras} {image_name}  (crear un contenedor)
    $ docker create -p27017:27017 --name monguito --network {nombre_de_la_red} -e MONGO_INIT_ROOT = pablo mongo (crear un contenedor especificando el puerto_maquina:puerto_docker, acordarse de especificar las variables de entorno) 
    $ docker start {container_name} (arrancar un contenedor)
    $ docker ps (ver contenedores corriendo)
    $ docker ps -a (ver todos los contenedores del sistema) 
    
### Logs
    $ docker logs {container_name} (see the container logs) 
    $ docker logs --follow {container_name} (ver logs mientras aparecen)
    
### Run     
    $ docker run -d {image_name} (busca la imagen si no la encuentra la descarga y corre un contenedor, el -d es para no ver los logs) 
    $ docker run --name monguito -p27017:27017 -d mongo (all-in one)
    $ docker run -it --rm -p 9696:9696 your_image_name bash (run in an interactive mode and then delete the container)
    
### Network
    $ docker network ls (ver redes disponibles)
    $ docker network create mired (crear "mired")
    
### Compose
    $ docker compose up (run the docker-compose.yml file)
    $ docker compose down (eliminar todo)
    $ docker compose -f docker-compose-dev.yml up (el -f es para ejecutar un archivo distinto a docker-compose.yml)

### Install nvidia container toolkit
- This toolkit adds a new runtime to Docker that allows containers to access the GPU.

https://github.com/NVIDIA/nvidia-container-toolkit

```
distribution=$(. /etc/os-release;echo $ID$VERSION_ID)
curl -s -L https://nvidia.github.io/nvidia-docker/gpgkey | sudo apt-key add -
curl -s -L https://nvidia.github.io/nvidia-docker/$distribution/nvidia-docker.list | sudo tee /etc/apt/sources.list.d/nvidia-docker.list
```

```
sudo apt-get update && sudo apt-get install -y nvidia-container-toolkit
```

```
sudo systemctl restart docker
```

https://github.com/NVIDIA/nvidia-docker/issues/1238

### Run a container with the corresponding volumes 

```
  docker run -it -p 8000:8000 \ 
  -e PYTHONPATH=/workspace:$PYTHONPATH \
  -u $(id -u):$(id -g) \
  --name {container-name} \
  --gpus all \
  -v .:/workspace \
  {image_name} \
  bash
  ```

### Run jupyter notebook server inside the container

```
jupyter notebook --ip=0.0.0.0 --port=8000 --no-browser --allow-root
```
