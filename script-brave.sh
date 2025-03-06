#!/bin/bash

# Script to check the latest version

current="1.77.75"
source_api="https://api.github.com/repos/brave/brave-browser/releases"

response=$(curl -s "$source_api")
if [ $? -ne 0 ]; then
  echo "No response."
  exit 1
fi

latest=$(echo "$response" \
	| grep -o '"name": "brave-browser-beta_[0-9]\+\.[0-9]\+\.[0-9]\+_amd64.deb"' \
	| head -n 1 \
	| sed -E 's/.*brave-browser-beta_([0-9]+\.[0-9]+\.[0-9]+)_amd64.deb.*/\1/')

if [ "$current" != "$latest" ]; then
  echo "New version!! Current: $current | Latest: $latest"
else
  echo "OK. Latest: $current"
fi
