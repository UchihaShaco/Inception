sudo docker run -itd --rm --name hello nginx --> means -it is for making it interactive and d is for running it in background 
#and --rm is for removing the container and cleaning itself up  after it is stopped --name to name the container in this case we had it as hello and nginx is the image name that we are using

Docker daemon --> is a service that runs on your host operating system. When you run a command, such as docker run, the client sends these commands to the daemon,
#which carries them out. The daemon runs on the host operating system,
# and the client can be run on the same host or on a remote host. The docker daemon is the process that runs in the operating system to which clients talk to.

Docker client --> is the primary way that many Docker users interact with Docker. When you use commands such as docker run, the client sends these commands to dockerd, 
# which carries them out. The docker command uses the Docker API. The Docker client can communicate with more than one daemon.

Docker image --> is a file, comprised of multiple layers, used to execute code in a Docker container.
# An image is essentially built from the instructions for a complete and executable version of an application, which relies on the host OS kernel. When the Docker user runs an image,
# it can become one or multiple instances of the container.

Docker container --> is a runtime instance of a Docker image. A Docker container consists of a Docker image, an execution environment,
# and a standard set of instructions. Docker containers make it easier to deploy and run applications consistently across environments, and ensure that the application works as designed.

Dockerfile --> is a text document that contains all the commands a user could call on the command line to assemble an image.
# Using docker build users can create an automated build that executes several command-line instructions in succession.

Docker-compose --> is a tool for defining and running multi-container Docker applications. With Compose, you use a YAML file to configure your application’s services.

Docker volume --> is a directory that is outside of the default Union File System and lives on the host file system. Volumes are useful for storing data, configuration, and other files.

Docker network --> is a type of network that allows communication between different Docker containers. Docker networks are created and managed using the docker network command.

Docker registry --> is a service that stores Docker images. Docker users can push and pull images from a registry, which can be public or private.