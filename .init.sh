#!/bin/bash
set -o errexit
SCRIPT_NAME=$(basename "$0")

OPTIONS_FILE="$(dirname "$(realpath "$0")")/${1}"
GAME_PORT=$(rev <<< $(cut -d'-' -f1 <<< "$(rev <<< "$(basename "${OPTIONS_FILE}")")"))
GAME_NAME=$(rev <<< $(cut -d'-' -f2- <<< "$(rev <<< "$(basename "${OPTIONS_FILE}")")"))
COMPOSE_FILE=$(dirname "$(realpath "$0")")/server/docker-compose.yml
USER_ID=$(id -u)
GROUP_ID=$(id -g)

echo "-------------------------------------"
echo "Script '${SCRIPT_NAME}'"

if [[ ! ${1} ]]
then
    echo "Nigga, type a game name and try again."
    exit
fi

. "${OPTIONS_FILE}"
