#!/bin/bash

# Run the docker build command
docker build -t nestapp8 \
--build-arg PERSONAL_ACCESS_TOKEN=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 \
--build-arg GITHUB_USERNAME=obinnaaliogor \
--build-arg REPOSITORY_NAME=nest-app-code \
--build-arg DOMAIN_NAME=www.wiz-obi.com \
--build-arg RDS_ENDPOINT=nest-app-db-id.cienrjyumifp.us-east-1.rds.amazonaws.com \
--build-arg RDS_DB_NAME=nest_app_db \
--build-arg RDS_MASTER_USERNAME=obinna \
--build-arg RDS_DB_PASSWORD=admin123 \
-f Dockerfile3 .