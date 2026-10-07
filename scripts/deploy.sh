#!/bin/bash

APP_NAME="DevOps Demo App"

check_application() {
    if [ -d ~/devops-learning/linux-practice ]; then
        echo "Application check passed."
        return 0
    else
        echo "Application directory not found."
        return 1
    fi
}

deploy() {
    echo "Starting Deployment: $APP_NAME"
    echo "Checking Application..."
    echo "Deployment Completed!..."
    return 0
}

if check_application; then
   deploy
else
   echo "Deployment aborted."
   exit 1
fi
