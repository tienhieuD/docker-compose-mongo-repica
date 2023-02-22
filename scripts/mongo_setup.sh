#!/bin/bash
echo "sleeping for 10 seconds"
sleep 10
echo mongo_setup.sh time now: `date +"%T" `
mongo <<EOF
  var cfg = {
    "_id": "rs0",
    "version": 1,
    "members": [
      {
        "_id": 0,
        "host": "mongo1",
        "priority": 2
      },
      {
        "_id": 1,
        "host": "mongo2",
        "priority": 0
      },
      {
        "_id": 2,
        "host": "mongo3",
        "priority": 0
      }
    ]
  };
rs.initiate(cfg, { force: true });
rs.secondaryOk();
db.getMongo().setReadPref('primary');
rs.status();
EOF
