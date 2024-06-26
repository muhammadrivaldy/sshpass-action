#!/bin/bash
set -e

echo "#################################################"
echo "Starting ${GITHUB_WORKFLOW}:${GITHUB_ACTION}"

# Available env
# echo "INPUT_HOST: ${INPUT_HOST}"
# echo "INPUT_PORT: ${INPUT_PORT}"
# echo "INPUT_USER: ${INPUT_USER}"
# echo "INPUT_PASS: ${INPUT_PASS}"
# echo "INPUT_KEY: ${INPUT_KEY}"
# echo "INPUT_RUN: ${INPUT_RUN}"

CMD="${INPUT_RUN/$'\n'/' && '}"

if [ -z "$INPUT_KEY" ] # Password
then
    echo "Using password"
    sshpass -p $INPUT_PASS ssh -o StrictHostKeyChecking=no -p $INPUT_PORT $INPUT_USER@$INPUT_HOST "$CMD"
else
    echo "Password empty"
fi

echo "#################################################"
echo "Completed ${GITHUB_WORKFLOW}:${GITHUB_ACTION}"