#/bin/bash

sudo apt update -y
sudo apt install -y postgresql-common postgresql-14 postgresql-client
sudo -u postgres psql postgres -c "ALTER USER postgres WITH PASSWORD 'postgres'"
