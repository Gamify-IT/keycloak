#!/usr/bin/env bash
set -e

/opt/keycloak/bin/kc.sh import --file /app/gamify-it/template/keycloak-realm-template.json

exec /opt/keycloak/bin/kc.sh "$@"
