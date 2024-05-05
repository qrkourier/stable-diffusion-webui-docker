#!/usr/bin/env bash
set -euxo pipefail;
PROFILES="--profile ziti --profile comfy --profile auto"
docker compose $PROFILES kill --remove-orphans;
# docker compose --profile download up --build;
docker compose $PROFILES up --build --detach --force-recreate;
docker compose $PROFILES logs --follow;
