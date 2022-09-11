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
