#!/bin/bash
localhostname=`hostname`
while read output; do
    thedate=`date`
    if ping -c1 "$output" > /dev/null 2>&1; then
        echo $thedate "reporting_host="$localhostname "host="$output "status=Success"
    else
        echo $thedate "reporting_host="$localhostname "host="$output "status=Failed"
    fi
done < pinglist.txt