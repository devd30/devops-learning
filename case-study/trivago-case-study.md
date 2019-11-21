# Trivago Case Study Readme

# Versions/Images used
- Docker(19.03.1)
- Docker-compose(1.24.1)
- Nginx(Image --> 1.17.3-alpine)
- Golang(Image --> alpine)
- Java(Image --> openjdk:11) 

The architecture is as below:

> The above mentioned versions and images were used while creating images
> I have to give executable permission to golang-webserver to make it run 
```sh
$ chmod +x golang-webserver
```
> After this I have created a Dockerfile for both app in separate folder
> which is in the zip.
> In the parent folder I have created a docker-compose.yml file which will
> build image and run things as per challenge,the command to run the same is below:
```sh
$ cd case-study
$ docker-compose  up --build  -d
```
> As per the challenge following endpoints are accessible 
```sh
http://localhost/hotels or IP_of_system/hotels
http://localhost/ready or IP_of_system/ready
http://localhost/metrics or IP_of_system/metrics
http://localhost/health or IP_of_system/health
```
All these configs are done in separate nginx.conf which is getting copied to docker image while building and resides in "lb" folder

Both Applications is getting exposed on port 8080, which later on accessed by nginx using service name and redirected to browser on port 80.
By default Compose sets up a single network for your app which is here is trivago. Each container for a service joins the default network and is both reachable by other containers on that network.

Nginx container is reponsible for routing requests so host port 80 is mapped container 80 port.

Nginx is routing 70% requests to go app and 30% to java as per the task

I have also added restart policy which will automatically restart the container on failure.


### Name
Davesh Sharma
### Email
daveshsharma@outlook.com




 
