#!/bin/bash
set -o errexit
SCRIPT_NAME=$(basename "$0")

echo "-------------------------------------"
echo "Script '${SCRIPT_NAME}', step 1/1"
echo "Server containers..."

docker ps -a --filter "ancestor=dom5_server"
