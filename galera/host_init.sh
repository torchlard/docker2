#!/bin/sh

# docker build -t ubuntu:galera-node1 .
# docker run -itd -p 3306:3306 ubuntu:galera-node1 
# docker exec -it mysql8 bash -c 'mysql < /root/init.sql'

docker-compose up -d --build

# sleep 12s
# docker exec -it galera-node1 bash -c 'mysql < /root/init.sql'
# docker exec -it galera-node2 bash -c 'mysql < /root/init.sql'
# docker exec -it galera-node3 bash -c 'mysql < /root/init.sql'


#  sudo mysqladmin password test1234