#!/usr/bin/env bash
# Do a speedtest with python and save the results.
VOLUME=${1:-/data}
DATE=`date +%F"-"%H%M`
FILENAME=speedtest_${DATE}.csv

echo "Performing speedtest"
speedtest-cli --csv > ${VOLUME}/${FILENAME}
echo "Done."
