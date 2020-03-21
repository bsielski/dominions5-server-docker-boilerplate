#!/bin/bash
set -o errexit
SCRIPT_NAME=$(basename "$0")
INIT_FILE=$(dirname "$(realpath "$0")")/.init.sh
UP_FILE=$(dirname "$(realpath "$0")")/up.sh
DOWN_FILE=$(dirname "$(realpath "$0")")/down.sh
. "${INIT_FILE}" "$1"

echo "-------------------------------------"
echo "Script '${SCRIPT_NAME}'"
echo "Shut server..."
"${DOWN_FILE}" "${1}"

echo "-------------------------------------"
echo "Script '${SCRIPT_NAME}'"
echo "Generate map for the game..."
USER_ID="${USER_ID}" GROUP_ID="${GROUP_ID}" GAME_NAME="${GAME_NAME}" GAME_PORT=$GAME_PORT HOURS=$HOURS GAME_OPTIONS=$GAME_OPTIONS docker-compose -f "${COMPOSE_FILE}" run --rm dom5_server ./Dominions5/dom5.sh ${GAME_NAME} --port ${GAME_PORT} ${GAME_OPTIONS} -T -o --newgame

echo "-------------------------------------"
echo "Script '${SCRIPT_NAME}'"
echo "Restart server..."
"${UP_FILE}" "${1}"
