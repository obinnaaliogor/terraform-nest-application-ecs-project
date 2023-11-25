#!/bin/bash

# Run the docker build command
docker build -t nestapp8 \
--build-arg PERSONAL_ACCESS_TOKEN= \
--build-arg GITHUB_USERNAME=obinnaaliogor \
--build-arg REPOSITORY_NAME=nest-app-code \
--build-arg DOMAIN_NAME= \
--build-arg RDS_ENDPOINT= \
--build-arg RDS_DB_NAME= \
--build-arg RDS_MASTER_USERNAME= \
--build-arg RDS_DB_PASSWORD= \
-f Dockerfile3 .