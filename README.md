[![Docker Pulls](https://img.shields.io/docker/pulls/cdave/keras.svg)](https://hub.docker.com/r/cdave/keras/)
[![Docker Stars](https://img.shields.io/docker/stars/cdave/keras.svg)](https://hub.docker.com/r/cdave/keras/)

# keras
TF derived docker image containing keras

Start with `nvidia-docker` for GPU support and be sure to forward port 8888 out of the container to allow access to the Jupyter server. 

## Running

Replace 9705 with your desired output port and run with:
`nvidia-docker run -it -p 9705:8888 cdave/keras`

