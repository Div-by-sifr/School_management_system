#!/usr/bin/env bash
# wait-for-db.sh style wait loop
host="$DB_HOST"
until mysqladmin ping -h "$host" --silent; do
  echo "Waiting for MySQL at $host..."
  sleep 2
done

# Django migrations & static
python manage.py migrate --no-input
python manage.py collectstatic --no-input

# Launch via gunicorn (or runserver for dev)
exec gunicorn School_management_system.wsgi:application \
    --bind 0.0.0.0:8000 \
    --workers 3

