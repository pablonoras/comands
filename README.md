# Comandos

## Git
## Push a new project
    $ git init
    $ git add .
    $ git commit -m "Add existing project files to Git"
    $ git remote add origin https://github.com/cameronmcnz/example-website.git
    $ git push -u -f origin develop

## Docker

    $ docker build -t house-price-reg-model .
    $ docker create -p8080:8080 --name regressor house-price-reg-model
    $ docker start regressor
    $ docker ps

## Gunicorn

    $ gunicorn --bind 0.0.0.0:8080 predict:app
    
## AWS - Elastic Beanstalk
    $ pip install awsebcli
    $ eb --version
    $ eb init -p docker house-price-env --region:sa-east-1
    $ eb local run --port 8080
    $ eb create house-prices-env   

## Ubuntu
### Cambio de versión de python
    
    $ sudo update-alternatives --install /usr/bin/python3 python3 /usr/bin/python3.9 1
    $ sudo update-alternatives --install /usr/bin/python3 python3 /usr/bin/python3.10 2
    
    $ sudo update-alternatives --config python3
    
## Poetry
### Poetry comand no encontrado

    $ export PATH="$HOME/.local/bin:$PATH"
    
## VSCode
### Python - Linux

    $ Alt Shift A (string a las lineas seleccionadas)
    $ Alt Shift flecha izq (seleccionar toda la linea)
    $ Ctrl Alt flecha abajo (multiplicar cursor)
    $ Alt flecha izq (ir al paso anterior)
    $ Alt Shift flecha arriba (duplicar celda jupyter)
    $ Crt Shift L (seleccionar todas las ocurrencias)
    $ Crt K Crt C (comentar lineas seleccionadas)

### Python - IOS

    $ Cmd Shift L (seleccionar todas las ocurrencias)
    $ Cmd Option flecha abajo (multiplicar cursor)
    
