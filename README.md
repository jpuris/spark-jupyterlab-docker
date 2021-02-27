# spark-jupyterlab-docker
Distributed spark cluster with jupyter labs on docker.
## Components
- Spark master
- Spark worker 2x
- Jupyter Lab

## Requirements
- Docker
- Docker compose (version 3 or newer)

## Build
```sh
make
```

## Run
```sh
make run
```

## Component web user interfaces
Component | Web UI URL
--- | ---
JupyterLab | http://localhost:8888
Spark master | http://localhost:8080
Spark worker 1 | http://localhost:8081
Spark worker 2 | http://localhost:8082

## Sample notebook
See [sample.ipynb](shared-workspace/sample.ipynb)

## Todo's
See [TODO.md](TODO.md)

## Dislaimer
This is a very early version of the contents in the repo

## License
[MIT](LICENSE)