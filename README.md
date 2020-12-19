# TA-forwarderping
![alt text](https://github.com/stressboi/TA-forwarderping/blob/main/ping_status.png?raw=true)

Simple Splunk UF script for pinging lots of hosts from a Windows server/endpoint.

Simply download this as a zip file and install it on a server or endpoint running the Splunk Windows Universal Forwarder. Edit the file "pinglist.txt" in the bin directory
and add your IP addresses or hostnames, one per line (there are some examples in there). Then edit the inputs.conf file
to change the interval (default is 300 seconds, or 5 minutes). (Be sure to copy inputs.conf to local directory as usual.)

Restart forwarder, and UF will ping all hosts in the list at the interval provided, and return simple line-by-line status in Splunk, such as this:

![alt text](https://github.com/stressboi/TA-forwarderping/blob/main/ping_search.png?raw=true)

Install it on multiple forwarders and distribute the pinglist to all, and you can get a view of host status from multiple
points on your network. Or, distribute a different pinglist per forwarder, if you can only reach certain hosts from certain
network boundaries. The data returned contains a "reporting_host" value for you to create the proper reports and dashboards.

A simple example search and dashboard is included in the TA.

Here are some additional viz options, all done with simple XML only:

![alt text](https://github.com/stressboi/TA-forwarderping/blob/main/ping_search2.png?raw=true)

brodsky@splunk.com

18DEC2020

