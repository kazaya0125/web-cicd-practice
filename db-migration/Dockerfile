FROM mariadb:11.4

WORKDIR /migration

COPY DB/schema.sql ./
COPY DB/seed.sql ./
COPY key/global-bundle.pem ./
COPY db-migration/run-migration.sh ./

ENTRYPOINT [ "sh", "/migration/run-migration.sh" ]
