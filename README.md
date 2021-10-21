# airflow-custom-image
this repo about how to custom airflow docker image

## step
1. change base image in first line `Dockerfile`
```
FROM <image>/<tag>
```
2. add python packages in `requirement.txt`
3. build custom image
```
docker build --tag <your_docker_repo>:<tags> .
```

example
```
docker build --tag myuser/custom-airflow:2.1.4-python3.6-v1.0 .
```
4. push
```
docker push your_docker_repo>:<tags>
```

example
```
docker push myuser/custom-airflow:2.1.4-python3.6-v1.0
```
5. using

change airflow image to custom image
