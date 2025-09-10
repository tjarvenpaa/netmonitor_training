#!/usr/bin/env bash
set -euo pipefail

ip addr add 10.10.10.2/24 dev eth1
ip route add 1.1.1.0/24 via 10.10.10.1

sleep 20
DB_HOST="${DB_HOST:-127.0.0.1}"
DB_PORT="${DB_PORT:-3306}"
DB_USER="${DB_USER:-root}"
DB_PASS="${DB_PASS:-}"

echo "Waiting for MariaDB at ${DB_HOST}:${DB_PORT}..."

# 1) Ensisijainen: mariadb-admin ping (vastaa 0 kun serveri elossa)
if command -v mariadb-admin >/dev/null 2>&1; then
  until mariadb-admin \
      --protocol=TCP -h "${DB_HOST}" -P "${DB_PORT}" \
      ${DB_USER:+-u "${DB_USER}"} ${DB_PASS:+-p"${DB_PASS}"} \
      ping >/dev/null 2>&1; do
    sleep 2
  done

# 2) Vaihtoehto: mysqladmin (jos symlink tms. olemassa)
elif command -v mysqladmin >/dev/null 2>&1; then
  until mysqladmin \
      --protocol=TCP -h "${DB_HOST}" -P "${DB_PORT}" \
      ${DB_USER:+-u "${DB_USER}"} ${DB_PASS:+-p"${DB_PASS}"} \
      ping >/dev/null 2>&1; do
    sleep 2
  done

# 3) Klientillä SQL-pikatesti (SELECT 1)
elif command -v mariadb >/dev/null 2>&1 || command -v mysql >/dev/null 2>&1; then
  _cli="$(command -v mariadb || command -v mysql)"
  until "${_cli}" \
      --protocol=TCP -h "${DB_HOST}" -P "${DB_PORT}" \
      ${DB_USER:+-u "${DB_USER}"} ${DB_PASS:+-p"${DB_PASS}"} \
      -e "SELECT 1" >/dev/null 2>&1; do
    sleep 2
  done

# 4) Viimeinen keino: TCP-porttiproba ilman ulkoisia työkaluja
else
  until (echo >"/dev/tcp/${DB_HOST}/${DB_PORT}") >/dev/null 2>&1; do
    sleep 2
  done
fi

echo "MariaDB is up."
# --> Tästä eteenpäin Observium-komennot (migreeraus, admin-käyttäjä yms.)
sleep 30

/opt/observium/adduser.php lab2 lab2 10

/opt/observium/add_device.php 1.1.1.1 lab2 v2c
/opt/observium/add_device.php 1.1.1.2 lab2 v2c
/opt/observium/add_device.php 1.1.1.3 lab2 v2c

/opt/observium/poller.php -h 1.1.1.*
