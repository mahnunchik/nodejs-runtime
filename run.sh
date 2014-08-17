#!/bin/bash

if [ ! -d "/app" ]; then
  if [ -n "$GIT_REPO" ]; then
    git clone --depth 1 "$GIT_REPO" /app
    cd /app
    npm install
  else
    echo "No \$GIT_REPO environment variable defined"
    exit 1
  fi
else
  echo "Application already cloned"
  cd /app
fi

npm "$@"
