# editor-dev

Run a local instance of Libero Editor for demos, testing and development.

# Quick Start

You can quickly spin-up a working version of Libero Editor using the `latest` versions of the containers published on [Docker Hub](https://hub.docker.com/u/liberoadmin).

```sh
docker-compose up
```

You can then view the editor by navigating to [here](http://localhost:4000)

# Developing locally

The primary purpose of this repository is to allow you to easily develop and test Libero Editor. As such, rather than use containers published on [Docker Hub](https://hub.docker.com/u/liberoadmin) you'll want to use your local versions instead. Thankfully, that is really easy to do. 

First, you need to build local versions of your containers.

```sh
cd /path/to/editor-client
docker build . -t liberoadmin/editor-client:latest

cd /path/to/editor-article-store
docker build . -t liberoadmin/editor-article-store:latest
```

And then, simply start the development stack.

```sh
docker-compose up -d
```

If you make changes, all you need to do is simply rebuild the relevant container with the same tag. The development stack will detect the change automatically, and shutdown the existing container and replace it with the new one.

NOTE: You might find it easier for pure development purposes to not rely on the `latest` tag, in which case you should build your local containers with a custom tag such as `dev`, and then relauch this project setting the environment variable `TAG=dev`. e.g.

```sh
cd /path/to/editor-client
docker build . -t liberoadmin/editor-client:dev

cd /path/to/editor-article-store
docker build . -t liberoadmin/editor-article-store:dev

cd /path/to/this/project
TAG=dev docker-compose up -d
```