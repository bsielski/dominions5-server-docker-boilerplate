#!/bin/bash
set -o errexit
SCRIPT_NAME=$(basename "$0")
INIT_FILE=$(dirname "$(realpath "$0")")/.init.sh
. "${INIT_FILE}" "$1"

echo "-------------------------------------"
echo "Script '${SCRIPT_NAME}', step 1/1"
echo "Logs..."

USER_ID="${USER_ID}" GROUP_ID="${GROUP_ID}" GAME_NAME="${GAME_NAME}" GAME_PORT=$GAME_PORT HOURS=$HOURS GAME_OPTIONS=$GAME_OPTIONS docker-compose -f "${COMPOSE_FILE}" logs

docker ps -a
