#!/bin/bash
set -o errexit
SCRIPT_NAME=$(basename "$0")
INIT_FILE=$(dirname "$(realpath "$0")")/.init.sh
. "${INIT_FILE}" "$1"

echo "-------------------------------------"
echo "Script '${SCRIPT_NAME}', step 1/1"
echo "Bash in the container..."

USER_ID="${USER_ID}" GROUP_ID="${GROUP_ID}" GAME_PORT=$GAME_PORT docker-compose -f "${COMPOSE_FILE}" exec dom5_server bash

docker ps -a
