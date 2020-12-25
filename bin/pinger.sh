#!/bin/bash
thehostname=`hostname`

cat pinglist.txt | while read output
do
    thedate=`date`
    if /bin/ping -c 1 "$output" >/dev/null; then
        echo $thedate "reporting_host="$thehostname "host="$output "status=Success"
    else
        echo $thedate "reporting_host="$thehostname "host="$output "status=Failed"
    fi
done
