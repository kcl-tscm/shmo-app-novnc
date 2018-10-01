shmo-app-novnc
==============

This is a minimalistic docker image which will help you run Interactive SHMO Java applet on the docker container and access it from ANY recent browser without requiring you to do any configuration on the client side.

## Requirements
- Docker: https://www.docker.com/get-started

## How to use
```
docker run -it -p 5800:5800 --name shmo-app-novnc --rm fekad/shmo-app-novnc

# Or if you like to run in the background
docker run -d -p 5800:5800--name shmo-app-novnc --rm fekad/shmo-app-novnc
docker stop shmo-app-novnc
```

Now visit http://localhost:5800 
You are good to go.


## Similar solutions:

* https://github.com/jlesage/docker-firefox
* https://github.com/uphy/novnc-alpine-docker
* https://github.com/paimpozhil/docker-novnc
