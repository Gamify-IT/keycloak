FROM quay.io/keycloak/keycloak:21.1

WORKDIR /app/gamify-it/template
COPY keycloak-realm-template.json .

ENV KC_DB="postgres"
ENV KC_DB_URL="jdbc:postgresql://keycloak-db:5432/postgres"
ENV KC_DB_USERNAME="postgres"
ENV KC_DB_PASSWORD="postgres"
ENV KC_HOSTNAME_STRICT="false"
ENV KC_HTTP_PORT="80"
ENV KC_HTTP_RELATIVE_PATH="/keycloak"
ENV KC_PROXY="edge"

RUN /opt/keycloak/bin/kc.sh build

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT [ "/entrypoint.sh" ]
CMD [ "start" ]
