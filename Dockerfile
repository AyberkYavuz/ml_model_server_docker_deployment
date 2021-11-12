# init a base image
FROM python:3.8.4
# define the present working directory
WORKDIR /ml_model_server_docker_deployment
# copy the contents into the working dir
ADD . /ml_model_server_docker_deployment
# run pip to install the dependencies of the flask app
RUN pip install -r requirements.txt
# define the command to start the container
CMD ["python", "ml_server.py"]