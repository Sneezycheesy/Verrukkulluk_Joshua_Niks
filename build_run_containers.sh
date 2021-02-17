#!/bin/bash

`git clone https://github.com/Sneezycheesy/Verrukkulluk_Joshua_Niks.git ./`;
docker build -t verrukkulluk_app:latest;
cd ./docker/Mysql/;
docker build -t verrukkulluk_mysql:latest .;


docker run -dp 9906:3306 --name verrukkulluk_mysql verrukkulluk_mysql:latest;

sleep 5;

docker exec -i verrukkulluk_mysql_test sh -c 'exec mysql -u root -p"thispasswordisuseless"' < ${PWD}/Verrukkulluk_db.sql;
docker exec -i verrukkulluk_mysql_test sh -c 'exec mysql -u root -p"thispasswordisuseless" -e "CREATE USER Joshii" -e "Alter user Joshii identified by thispasswordisuseless" -e "GRANT ALL PRIVILEGES Joshii@% identified by thispasswordisuseless"';


docker run -d -p 8080:80 --name verrukkulluk_app verrukkulluk_app:latest;