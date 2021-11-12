# ml_model_server_docker_deployment
This repository is for containing source codes of machine learning model server deployment.

## Prerequisite
You need to have [docker](https://www.docker.com/products/docker-desktop)

## Docker Deployment Instructions
1. clone this repo to your local machine

2. open terminal

3. cd /path/to/ml_model_server_docker_deployment

4. start docker

5. use the following command to build the docker image
```bash
docker image build -t docker-iris-ml-server .
```

6. use the following command to see docker images
```bash
docker image ls
```

7. use the following command to run ml server
```bash
docker run -p 5000:5000 -d docker-iris-ml-server
```

8. open http://localhost:5000/predict_class in your browser to see get method message

9. open postman and try http://localhost:5000/predict_class for the post method to get model prediction

10. use the following command to see CONTAINER ID
```bash
docker ps
```

11. copy CONTAINER ID

12. use the following command to stop docker container
```bash
docker stop "CONTAINER ID"
```

13. use the following command to free up all the resources that the docker container uses
```bash
docker system prune
```