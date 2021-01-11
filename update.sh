docker stop $(docker ps -q --filter ancestor=django-on-docker)
docker build -t django-on-docker -f Dockerfile .
docker run -it -d -p 8000:8000 django-on-docker
