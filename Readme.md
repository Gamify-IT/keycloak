# Gamify-IT Keycloak image

This Keycloak image imports the Gamify-IT realm on startup.


## Environment variables

This image sets some default values. For more information about the
variables see the [keycloak documentation](https://www.keycloak.org/server/all-config).

- `KC_DB`:
    - default: `postgres`
- `KC_DB_URL`:
    - default: `jdbc:postgresql://keycloak-db:5432/postgres`
- `KC_DB_USERNAME`:
    - default: `postgres`
- `KC_DB_PASSWORD`:
    - default: `postgres`
- `KC_HOSTNAME_STRICT`:
    - default: `false`
- `KC_HTTP_PORT`:
    - default: `80`
- `KC_HTTP_RELATIVE_PATH`:
    - default: `/keycloak`
- `KC_PROXY`:
    - default: `edge`
- `SKIP_IMPORT`:
    - set to `true` to skip the import



## Development

To build and run for development run:
```bash
docker compose up --build
```
