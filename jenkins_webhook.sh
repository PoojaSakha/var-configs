#!/bin/bash

# Jenkins credentials
JENKINS_USER="pooja"
JENKINS_TOKEN="11b87a4bd0091b2e64adaf4c7358a867cd"
JENKINS_URL="http://localhost:8080"

# Get the crumb
CRUMB=$(curl -u "${JENKINS_USER}:${JENKINS_TOKEN}" -s "${JENKINS_URL}/crumbIssuer/api/json" | jq -r '.crumb')

# Print the crumb to verify it is retrieved correctly
echo "Crumb: ${CRUMB}"

# Make the POST request with the crumb
curl -X POST -H 'Content-Type: application/json' -H "Jenkins-Crumb:${CRUMB}" -d '{"callback":"http://localhost:8080/webhook-step/c2901d1b-c68c-438d-b11b-c59a64be270f"}' "${JENKINS_URL}/webhook"