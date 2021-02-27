.DEFAULT_GOAL := default

SPARK_VERSION      = 3.0.2
HADOOP_VERSION     = 3.2
JUPYTERLAB_VERSION = 3.0.9

MANIFEST_DIR = dockerfiles

cluster-base:
	docker build \
	-f ${MANIFEST_DIR}/cluster-base.Dockerfile \
	-t cluster-base .

spark-base: cluster-base
	docker build \
	--build-arg spark_version="${SPARK_VERSION}" \
	--build-arg hadoop_version="${HADOOP_VERSION}" \
	-f ${MANIFEST_DIR}/spark-base.Dockerfile \
	-t spark-base .

spark-worker: spark-base
	docker build \
	-f ${MANIFEST_DIR}/spark-worker.Dockerfile \
	-t spark-worker .

spark-master: spark-base
	docker build \
	-f ${MANIFEST_DIR}/spark-master.Dockerfile \
	-t spark-master .

jupyter-lab: cluster-base
	docker build \
	--build-arg spark_version="${SPARK_VERSION}" \
	--build-arg jupyterlab_version="${JUPYTERLAB_VERSION}" \
	-f ${MANIFEST_DIR}/jupyter-lab.Dockerfile \
	-t jupyter-lab .

run:
	docker-compose up

default: spark-base spark-master spark-worker jupyter-lab
