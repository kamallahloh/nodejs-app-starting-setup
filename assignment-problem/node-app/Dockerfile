FROM node

WORKDIR /app

COPY package.json /app
# COPY package.json .

RUN npm install

COPY . /app
# COPY . .

# EXPOSE 8000 
EXPOSE 3000 
# our app server listen on port 3000 so we can send request to it, so we need to expose this port from our container to host machine

CMD ["node", "server.js"]

# docker build -t nodeapp:latest . # the . is the context of the build, the directory where the Dockerfile is located

# docker run -p 8000:3000 nodeapp:latest
# this will start a web server on the exposed port 3000 in the container so we need to publish it and map it to port 8080 on our host machine

# docker run -p 8000:3000 -d --rm --name nodecont nodeapp:latest # where -d is to detach the container from the terminal, --rm is to remove the container when it is stopped

# docker stop nodecont # here stopped but not removed

# docker rm nodecont # to remove the container

# docker remove $(docker ps -a -q) # to remove all containers

# docker rmi nodeapp:latest # to remove the image

# docker image prune -a # to remove all unused images


