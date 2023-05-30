### Install nvidia container toolkit
- This toolkit adds a new runtime to Docker that allows containers to access the GPU.

https://github.com/NVIDIA/nvidia-container-toolkit

`distribution=$(. /etc/os-release;echo $ID$VERSION_ID)
curl -s -L https://nvidia.github.io/nvidia-docker/gpgkey | sudo apt-key add -
curl -s -L https://nvidia.github.io/nvidia-docker/$distribution/nvidia-docker.list | sudo tee /etc/apt/sources.list.d/nvidia-docker.list`


`sudo apt-get update && sudo apt-get install -y nvidia-container-toolkit`
`sudo systemctl restart docker`
https://github.com/NVIDIA/nvidia-docker/issues/1238

### Build an image

docker build -t {image_name}:{version} -f docker/{dockerfile} .  

### Run a container with the corresponding volumes 

`docker run -it -p 8000:8000 \
  -e PYTHONPATH=/workspace:$PYTHONPATH \
  -u $(id -u):$(id -g) \
  --name {container-name} \
  --gpus all \
  -v .:/workspace \
  {image_name} \
  bash`

### Run jupyter notebook server inside the container

`jupyter notebook --ip=0.0.0.0 --port=8000 --no-browser --allow-root`
