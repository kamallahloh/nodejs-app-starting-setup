# in the node container, we will use the node image from docker hub
# and we will copy the current directory to the /app directory in the container
# so that we can run the node application in the container

FROM node

# create a directory in the container
WORKDIR /app

# COPY the current directory to the /app directory in the container
# this will copy all the files to the /app directory in the container
# COPY . ./
COPY . /app

# run the application
RUN npm install

# since the docker image is isolated from the host machine, we need to expose the port to the host machine
EXPOSE 80

# RUN node server.js  # this will executed when the image is built
# CMD ["node", "server.js"]  # this will executed when the container is started.
CMD ["node", "server.js"]


# build the image
# docker build . 

# run the container
# docker run -p 3000:80 <image_id>  # this will map the port 3000 on the host machine to the port 80 in the container
# where 3000 is the port on the host machine (http://localhost:3000/) and 80 is the port in the container (app.listen(80))

