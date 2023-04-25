# Comandos

## Git
### Push a new project
    $ git init
    $ git add .
    $ git commit -m "Add existing project files to Git"
    $ git remote add origin https://github.com/cameronmcnz/example-website.git
    $ git push -u -f origin develop

## Linux
    $ mv Old_folder New_folder (renombrar carpeta)
    $ rm -r (eliminar carpeta llena de archivos)
    $ nproc (número de nucleos)
    $ htop (monitor de actividad)
    $ ls -l (show file permissions)

## Docker (https://github.com/nschurmann/mongoapp-curso-docker)
    $ docker pull --platform {platform_name}
    $ docker pull python:3.9 (descargar una versión particular)
    $ docker image rm python:3.9 (eliminar una imagen)
    $ docker create --name {container_name que quieras} {image_name}  (crear un contenedor)
    $ docker create -p27017:27017 --name monguito --network {nombre_de_la_red} -e MONGO_INIT_ROOT = pablo mongo (crear un contenedor especificando el puerto_maquina:puerto_docker, acordarse de especificar las variables de entorno) 
    $ docker start {container_name} (arrancar un contenedor)
    $ docker ps (ver contenedores corriendo)
    $ docker ps -a (ver todos los contenedores del sistema) 
    $ docker rm {container_name} (remover los contenedores)
    $ docker images (muestra las imagenes descargadas)
    $ docker logs {container_name} (see the container logs) 
    $ docker logs --follow {container_name} (ver logs mientras aparecen)
    $ docker run -d {image_name} (busca la imagen si no la encuentra la descarga y corre un contenedor, el -d es para no ver los logs) 
    $ docker run --name monguito -p27017:27017 -d mongo (all-in one)
    $ docker network ls (ver redes disponibles)
    $ docker network create mired (crear "mired")
    $ docker build -t {name_app:version} {path, solo un . si te encuentra en el mismo path donde est el Dockerfile} (crear imagenes a partir de un archivo Dockerfile) 
    $ docker compose up (run the docker-compose.yml file)
    $ docker compose down (eliminar todo)
    $ docker build -t house-price-reg-model .
    $ docker create -p8080:8080 --name regressor house-price-reg-model
    $ docker start regressor
    $ docker ps
    $ docker compose -f docker-compose-dev.yml up (el -f es para ejecutar un archivo distinto a docker-compose.yml)

## Gunicorn

    $ gunicorn --bind 0.0.0.0:8080 predict:app
    
## AWS 
### Elastic Beanstalk
    $ pip install awsebcli
    $ eb --version
    $ eb init -p docker house-price-env --region:sa-east-1
    $ eb local run --port 8080
    $ eb create house-prices-env
    
### S3
    $ aws s3 sync s3://aws-mediktor-datascience/nextsymptom/17-18/raw/config/ ./data/17-18/raw/config/
    $ aws s3 sync ./data/17-18/pre_processed/1_optionals/1 s3://aws-mediktor-datascience/nextsymptom/data/17-18/pre_processed/1_optionals/1

## Ubuntu
### Cambio de versión de python
    
    $ sudo update-alternatives --install /usr/bin/python3 python3 /usr/bin/python3.9 1
    $ sudo update-alternatives --install /usr/bin/python3 python3 /usr/bin/python3.10 2
    
    $ sudo update-alternatives --config python3
    
## Poetry

    $ poetry new proyect-name (iniciar un proyecto)
    $ export PATH="$HOME/.local/bin:$PATH" (poetry comand no encontrado)
    $ curl -sSL https://install.python-poetry.org | python3 - (install poetry)
    
### Add tensorflow to Mac M1
    $ poetry add tensorflow-macos@2.9 --platform darwin
    $ poetry add tensorflow-metal@0.5 --platform darwin
    $ poetry add tensorflow@2.9 --platform linux
    
## VSCode
### Python - Linux

    $ Alt Shift A (string a las lineas seleccionadas)
    $ Alt Shift flecha izq (seleccionar toda la linea)
    $ Ctrl Alt flecha abajo (multiplicar cursor)
    $ Alt flecha izq (ir al paso anterior)
    $ Alt Shift flecha arriba (duplicar celda jupyter)
    $ Crt Shift L (seleccionar todas las ocurrencias)
    $ Crt K Crt C (comentar lineas seleccionadas)
    $ Crt K Crt U (descomentar lineas seleccionadas)
    $ Shift Tab (mover a la izq el bloque seleccionado un tab)
    $ Crtl Shift k (eliminar linea de donde sea)

### Python - IOS

    $ Cmd Shift L (seleccionar todas las ocurrencias)
    $ Cmd Option flecha abajo (multiplicar cursor)
    $ Cmd / (comentar todas las lineas seleccionadas)
    $ Cmd Shift k (eliminar linea de donde sea)
    $ Cmd W (cerrar pestaña)
    
## Python 

    $ find . | grep -E "(/__pycache__$|\.pyc$|\.pyo$)" | xargs rm -rf (borrar cache)
    $ sys.path.append("module_path") (add a path to PYTHONPATH)

## Sublime4 
   ### Ubuntu
    $ Alt F3 (seleccionar todas las ocurrencias)
    $ Alt Shift Abajo/arriba (multiplicar cursor)
    $ Ctrl Shift L (multiplicar cursor en las lineas seleccionadas)

## Pyenv

    $ pyenv shell --unset (unset the shell python version)

## GPU

    $ watch -n 2 nvidia-smi (check gpu usage and update every 2 seconds)
    $ nvidia-smi --list-gpus (check how many gpus and which ones you have)
    $ nvidia-smi -L (check how many gpus and which ones you have)
    $ nvidia-smi -q (more info about your gpu)
    $ ls /proc/driver/nvidia/gpus (if 1 folder, so 1 gpu)
    $ cat /proc/driver/nvidia/gpus({gpu_folder}/information (if 1 folder, so 1 gpu)
    $ sudo rmmod nvidia_uvm and sudo modprobe nvidia_uvm (solve cuda initialization error)
    $ kill -9 <PID> (kill a process) 
   
## CPU 
    $ htop
    $ free -m

## Pythorch 

[install_pythorch_mac_m1](https://github.com/jeffheaton/t81_558_deep_learning/blob/pytorch/install/pytorch-install-aug-2022.ipynb)
    
