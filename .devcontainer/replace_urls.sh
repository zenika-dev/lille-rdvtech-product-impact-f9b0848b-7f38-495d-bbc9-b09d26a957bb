#!/bin/bash

find -name application.properties -exec sed -i 's/localhost:9092/kafka:29092/g' {} \;
find -name application.properties -exec sed -i 's/localhost:5432/database:5432/g' {} \;

find -name README.md -exec sed -i 's/localhost:1080/product-composition-api:8080/g' {} \;
find -name README.md -exec sed -i 's/\[pgadmin\](http:\/\/localhost:5050)/pgadmin (see the "Ports" tab below in VSCode, line `pgadmin`)/g' {} \;
find -name README.md -exec sed -i 's/\[kafbat\](http:\/\/localhost:9000)/kafbat (see the "Ports" tab below in VSCode, line `Kafbat UI`)/g' {} \;

find -name ProductCompositionService.java -exec sed -i 's/localhost:1080/product-composition-api:8080/g' {} \;
