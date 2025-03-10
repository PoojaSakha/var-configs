#!/bin/bash

# Read the callback URL from the file
CALLBACK_URL=$(cat callback_url.txt)

# Data to send in the POST request
DATA='{"status":"success"}'

# Send the POST request
curl -X POST -H 'Content-Type: application/json' -d "${DATA}" "${CALLBACK_URL}"