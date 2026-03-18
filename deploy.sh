#!/bin/bash

set -e

APP_NAME="library_app"
IMAGE_NAME="${DOCKER_USERNAME}/library-app:latest"

echo "🚀 Starting deployment..."

# Pull latest image
docker pull $IMAGE_NAME

# Stop existing container
docker stop $APP_NAME || true
docker rm $APP_NAME || true

# Run new container
docker run -dit \
  --name $APP_NAME \
  -e LOAN_DAYS=14 \
  -e DATA_FILE=/app/library.json \
  -v $(pwd)/library.json:/app/library.json \
  $IMAGE_NAME

echo "✅ Deployment completed successfully!"
