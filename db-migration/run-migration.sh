#!/bin/sh
set -eu

echo "Step 1: Create tables"
mariadb \
  --host="$DB_HOST" \
  --user="$DB_USER" \
  --password="$DB_PASSWORD" \
  --database="$DB_NAME" \
  --ssl-ca=/migration/global-bundle.pem \
  --ssl-verify-server-cert \
  < /migration/schema.sql

echo "Step 2: Insert initial data"
mariadb \
  --host="$DB_HOST" \
  --user="$DB_USER" \
  --password="$DB_PASSWORD" \
  --database="$DB_NAME" \
  --ssl-ca=/migration/global-bundle.pem \
  --ssl-verify-server-cert \
  < /migration/seed.sql

echo "Database migration completed"