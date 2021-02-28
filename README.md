# spark-jupyterlab-docker
Distributed spark cluster with jupyter labs on docker.
## Components
- Spark master
- Spark worker 2x
- Jupyter Lab

### Versions
Component | Version
--- | ---
JupyterLab | 3.0.9
Spark | 2.4.7
Hadoop | 2.7
JRE | 8

One can change the versions deployed by editing [Makefile](Makefile)
Spark packages are downloaded from https://archive.apache.org/dist/spark/

## Requirements
- Docker
- Docker compose (version 3 or newer)

## Build
```sh
# Builds the necessary stack images
make
```

## Run
```sh
# Bootstraps the stack
make run
```

## Stop and cleanup
```sh
# Shuts down the stack and removes the containers
make stop

# Make sure the stack is shut down
# Removes all of the stack images
make cleanup -i
```

## Container logs
You can see all component console outputs with `docker-compose logs -f -t`

## Component web user interfaces
Component | Web UI URL
--- | ---
JupyterLab | http://localhost:8888
JupyterLab spark app* | http://localhost:4040
Spark master | http://localhost:8080
Spark worker 1 | http://localhost:8081
Spark worker 2 | http://localhost:8082

*Only applies after spark context has been created

## Sample notebook
See [sample.ipynb](shared-workspace/sample.ipynb)

## Todo's
See [TODO.md](TODO.md)

## Dislaimer
This is a very early version of the contents in the repo

## License
[MIT](LICENSE)