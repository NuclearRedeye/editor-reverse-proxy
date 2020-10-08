# editor-reverse-proxy

Repo that can be used to run a local instance of the Libero Editor backend and client

# Usage

Build local versions of the other containers...

```
cd /path/to/editor-client
npm run build
docker build . -t editor-client:local --no-cache

cd /path/to/editor-article-store
npm run build
docker build . -t editor-article-store:local --no-cache
```

Build the local gateway container...

```
docker build . -t editor-reverse-proxy:local
```

Then start the whole stack using docker-compose...

```
docker-compose up
```
