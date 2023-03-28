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

## Docker

    $ docker build -t house-price-reg-model .
    $ docker create -p8080:8080 --name regressor house-price-reg-model
    $ docker start regressor
    $ docker ps

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

## Pyenv

    $ pyenv shell --unset (unset the shell python version)
   
## Pythorch 

[install_pythorch_mac_m1](https://github.com/jeffheaton/t81_558_deep_learning/blob/pytorch/install/pytorch-install-aug-2022.ipynb)
    
