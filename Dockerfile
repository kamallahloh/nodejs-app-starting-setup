# in the node container, we will use the node image from docker hub
# and we will copy the current directory to the /app directory in the container
# so that we can run the node application in the container

FROM node

# create a directory in the container
WORKDIR /app

# images are layer based so each command in the Dockerfile will create a new layer
# so we need to be careful with the order of the commands in the Dockerfile 
# any changes in the source code will invalidate the cache and the image will be rebuilt
# so first we only copy the package.json file to the /app directory in the container

COPY package.json /app

# run the application
RUN npm install

# COPY the current directory to the /app directory in the container
# this will copy all the files to the /app directory in the container
# COPY . ./
COPY . /app
# this copy is part of the source code that ships with the image
# to reflect the changes in the source code, we need to rebuild the image
# Images are readonly XXX
# so we need to run docker build . to rebuild to new image with different source code

# since the docker image is isolated from the host machine, we need to expose the port to the host machine
EXPOSE 80

# RUN node server.js  # this will executed when the image is built
# CMD ["node", "server.js"]  # this will executed when the container is started.
CMD ["node", "server.js"]


# build the image
# docker build . 

# run the container

# docker run -p 3000:80 --rm -d --name my_app <image_id>


# docker run -p 3000:80 <image_id>  # this will map the port 3000 on the host machine to the port 80 in the container
# where 3000 is the port on the host machine (http://localhost:3000/) and 80 is the port in the container (app.listen(80))

# docker run --rm  ==> remove the container after it is stopped 

# docker run -d  ==> run the container in the background (detached mode) 

# docker run --name my_app  ==> name the container as my_app

# docker run -it  ==> run the container in interactive mode


####################################


# publish the image to docker hub
# create a repository in docker hub and got the repository name
# pull the image from docker hub and tag it with the repository name
# docker pull <image_id>
# docker run <image_id> # you can skip the pull command where the image will be pulled and run in one command but it is not recommended since it will run the local image if it exists without checking the remote repository for updates.

# docker tag <image_id> <repository_name> # give your local image a new name which matches the repository name that includes the username and the repository name in docker hub 
# you can 
#    docker build -t <repository_name> .  # build the image and tag it with the repository name
# or docker tag <image_id> or <image_name:tag> <repository_name>  # tag an existing image with the repository name

# docker login  # login to docker hub
# docker push <repository_name>
