
exec:  cd zkui; docker build -t zkui:latest -f Dockerfile .
#############################################################
zkui-github: https://github.com/DeemOpen/zkui
git clone https://github.com/DeemOpen/zkui
cd zkui && make build
ok, docker zkui images exists!

# How to build the docker image

```make build```

# How to publish the docker image

```make publish```

# Run the container

``run.sh```

# Run within Docker Compose

```
zkui:
  image: zkui
  ports:
    - "9090:9090"
```
