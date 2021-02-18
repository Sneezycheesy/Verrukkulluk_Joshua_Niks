#!/bin/bash

git clone https://github.com/Sneezycheesy/Verrukkulluk_Joshua_Niks.git ./verrukkulluk;
cd ./verrukkulluk
cd ./php
docker build -t verrukkulluk_app:latest .;
cd ../
cd ./mysql/;
docker build -t verrukkulluk_mysql:latest .;
cd ../


docker run -dp 9906:3306 --name verrukkulluk_mysql_test verrukkulluk_mysql:latest;
sleep 30;

docker exec -i verrukkulluk_mysql_test sh -c 'exec mysql -u root -p"thispasswordisuseless"' < ./php/verrukkulluk/database/Verrukkulluk_db.sql;
docker exec -i verrukkulluk_mysql_test sh -c 'exec mysql -u root -p"thispasswordisuseless" -e "CREATE USER Joshii;"';
docker exec -i verrukkulluk_mysql_test sh -c 'exec mysql -u root -p"thispasswordisuseless" -e "alter user Joshii identified by \"thispasswordisuseless\";"';
docker exec -i verrukkulluk_mysql_test sh -c 'exec mysql -u root -p"thispasswordisuseless" -e "grant all privileges on Verrukkulluk.* to Joshii@\"%\";"';


docker run -d -p 8000:80 --name verrukkulluk_app_test verrukkulluk_app:latest;