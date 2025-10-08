#!/bin/bash
# =========================================
# Script: create_pg_dbs.sh
# Purpose: Create PostgreSQL databases and schemas (raw, dw, dm)
# Usage: ./create_pg_dbs.sh
# =========================================

DATABASES=("generator" "bar")   # Add your DB names here
SCHEMAS=("raw" "dw" "dm")

echo "=== Starting PostgreSQL database and schema creation ==="

for DB in "${DATABASES[@]}"; do
  echo "Processing database: $DB"

  # Check if DB exists
  if sudo -u postgres psql -tAc "SELECT 1 FROM pg_database WHERE datname='$DB';" | grep -q 1; then
    echo " -> Database '$DB' already exists."
  else
    echo " -> Creating database '$DB'..."
    sudo -u postgres createdb "$DB"
  fi

  # Create schemas
  for SCHEMA in "${SCHEMAS[@]}"; do
    echo "    -> Creating schema: $SCHEMA"
    sudo -u postgres psql -d "$DB" -c "CREATE SCHEMA IF NOT EXISTS $SCHEMA;"
  done
done

echo "=== Done! ==="
