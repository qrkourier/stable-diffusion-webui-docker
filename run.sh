#!/usr/bin/env bash
set -euxo pipefail;
PROFILE=ziti
docker compose --profile $PROFILE kill --remove-orphans;
docker compose --profile download up --build;
docker compose --profile $PROFILE up --build --detach --force-recreate;
docker compose --profile $PROFILE logs --follow;
