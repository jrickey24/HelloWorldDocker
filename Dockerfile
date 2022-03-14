FROM openjdk:11
# STEP 1: FROM -> The base image which you would like to pull from hub.docker.com
# NOTE -> Be careful using images that aren't "Official"

RUN mkdir /app
# STEP 2: RUN -> Create/Make a new app directory for your application files
# NOTE -> A Docker file can contain and execute multiple run commands
# NOTE -> This directory will live inside your container, not your local machine

COPY out/production/HelloWorldDocker/ /app
# STEP 3: COPY -> The app files you want to copy from your host machine into your image filesystem
# NOTE -> The first path is the from path, AKA your local machine files
# NOTE -> The second path is the destination path, AKA your Docker image

WORKDIR /app
# STEP 4: SET -> Set the directory within your image from which future commands will be executed

CMD java Main
# STEP 5: CMD -> Specify the command that will execute when you start the container from the image
# NOTE -> Your Docker file must contain one command, specifying the default entry point instruction for your container
# NOTE -> This is the same command you would use to run the Main Java class(in this case) from your terminal

# STEP 6: Run the following in your terminal
# docker build -t hello-docker-world:1.0 .
# docker build -t {imageName}:{tagName} {dockerFilePath}
# NOTE -> The above command specifies the image and tag name you want to build, followed by the Dockerfile's path.
# After the "-t", the image name is provided. In this case -> "hello-docker-world".
# The semicolon ":" is used to separate the image name from the tag name. In this case -> "1.0".
# Finally, the path where the docker file is located. Since we're already in the same directory -> "."
# NOTE -> If you don't specify a tag, the build will default the tag name as "latest"
# NOTE -> During the build process, Docker will first search for the base image you specify in the FROM command locally.
# If not found, it will then search for and extract the image from Docker Hub.
# NOTE -> To see a list of the images you currently have, you can run the following command -> docker images
# STEP 7: Verify the image you just built and return a list of all images you currently have by running this command ->
# docker images
# STEP 8: Instantiate the image and run your container based on the image using the following command ->
# docker run hello-docker-world:1.0
# docker run {imageName}:{tagName}


