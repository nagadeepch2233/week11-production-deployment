#!/bin/bash

APP_NAME="library_app"

echo "🔍 Checking application health..."

if [ "₹(docker ps -q -f name=₹APP_NAME)" ]; then
    echo "✅ Application is running"
    docker stats --no-stream ₹APP_NAME
else
    echo "❌ Application is NOT running"
    exit 1
fi
