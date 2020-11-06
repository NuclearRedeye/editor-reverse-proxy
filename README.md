# editor-dev

Creates a local environment for running and developing Libero Editor.

# Quick Start

You can quickly spin-up a working version of Libero Editor using the `latest` versions of the containers published on [Docker Hub](https://hub.docker.com/u/liberoadmin).

```
docker-compose up
```

You can then view the editor by navigating to [here](http://localhost:3000)

# Developing locally

The primary purpose of this repository is to allow you to easily develop and test Libero Editor. As such, rather than use containers published on [Docker Hub](https://hub.docker.com/u/liberoadmin) you'll want to use your local versions instead. Thankfully, that is really easy to do. 

First, you need to build local versions of your containers.

```
cd /path/to/editor-client
docker build . -t liberoadmin/editor-client:latest

cd /path/to/editor-article-store
docker build . -t liberoadmin/editor-article-store:latest
```

And then, simply start the development stack.

```
docker-compose up -d
```

If you make changes, all you need to do is simply rebuild the relevant container with the same tag. The development stack will detect the change automatically, and respawn the relevant container.
