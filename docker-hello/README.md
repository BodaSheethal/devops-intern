# Docker Hello Python

This project demonstrates a simple Docker container running a Python script.

## Files

- `hello.py` - Python script that prints a message.
- `Dockerfile` - Instructions to build the Docker image.

## Build the Docker image

Open terminal in this folder and run:

```bash
docker build -t hello-python .


run the container:
docker run --rm hello-python


You should see the output:

Hello from Docker!