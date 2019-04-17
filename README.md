# docker-vue-demo

This is a [multi-stage builds](https://docs.docker.com/develop/develop-images/multistage-build/) example with vue.

## Start The Repository

If you clone this repo, please ignore this and go to [Build Dockerfile](#build-dockerfile).

Initial the vue repository:

```bash
vue create vue-docker
```

Enter the directory:

```bash
cd vue-docker
```

Create the [nginx.conf](./nginx.conf) works for history mode and the [`Dockerfile`](./Dockerfile).

## Build Dockerfile

Build a image tagged as `vue-multi-stage-vue-demo`:

```bash
docker build -t vue-multi-stage-vue-demo .
```

Try the image:

```bash
docker run --rm -it -p 8080:80 vue-multi-stage-vue-demo
```

Visit <http://localhost:8080>.
