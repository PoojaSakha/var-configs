#!/bin/bash

# Jenkins credentials
JENKINS_USER="pooja"
JENKINS_TOKEN="11b87a4bd0091b2e64adaf4c7358a867cd"
JENKINS_URL="http://localhost:8080"

# Get the crumb
CRUMB=$(curl -u "${JENKINS_USER}:${JENKINS_TOKEN}" -s "${JENKINS_URL}/crumbIssuer/api/json" | jq -r '.crumb')

# Print the crumb to verify it is retrieved correctly
echo "Crumb: ${CRUMB}"

# Read the callback URL from the file
CALLBACK_URL=$(cat callback_url.txt)

# Make the POST request with the crumb
curl -X POST -H 'Content-Type: application/json' -H "Jenkins-Crumb:${CRUMB}" -d "{\"callback\":\"${CALLBACK_URL}\"}" "${JENKINS_URL}/webhook"