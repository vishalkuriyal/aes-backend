#!/bin/bash

printf "Pulling form github\n"

git pull

printf "Installing dependencies\n"

npm install

printf "Building\n"

npm run build

printf "Deploying\n"

pm2 restart strapi-app
