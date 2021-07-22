# Run the docker container.

. docker/env.sh
docker run \
  -dit \
  -v $PWD:/workspace \
  -p $HOST_PORT:$CONTAINER_PORT \
  --name $CONTAINER_NAME\
  --rm \
  --shm-size=2g \
  $IMAGE_NAME
docker exec \
  -d \
  $CONTAINER_NAME sh /workspace/docker/init.sh