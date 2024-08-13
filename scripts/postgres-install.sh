#/bin/bash

sudo apt update -y
sudo apt install -y postgresql-common postgresql-client
sudo /usr/share/postgresql-common/pgdg/apt.postgresql.org.sh
sudo apt update -y
sudo apt install -y postgresql-12


sudo -u postgres psql postgres -c "ALTER USER postgres WITH PASSWORD 'postgres'"
sudo sed "s/scram-sha-256/md5/" /etc/postgresql/12/main/pg_hba.conf

