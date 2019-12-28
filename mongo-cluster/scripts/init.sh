#!/bin/bash

mongo mongo1:27017 /scripts/init-cluster.js

sleep 10s
echo "========================================"
mongo mongo1:27017 --eval "db.getMongo().setSlaveOk()"
mongo mongo2:27017 --eval "db.getMongo().setSlaveOk()"
mongo mongo3:27017 --eval "db.getMongo().setSlaveOk()"









