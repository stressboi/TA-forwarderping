# TA-forwarderping
![alt text](https://github.com/stressboi/TA-forwarderping/blob/main/ping_status.png?raw=true)

Simple Splunk UF script for pinging lots of hosts from a Windows server/endpoint.

Simply download this as a zip file and install it on your Windows UF. Edit the file "pinglist.txt" in the bin directory
and add your IP addresses or hostnames, one per line (there are some examples in there). Then edit the inputs.conf file
to change the interval (default is 300 seconds, or 5 minutes). (Be sure to copy inputs.conf to local directory as usual.)

Restart forwarder, and UF will ping all hosts in the list and return simple line-by-line status in Splunk, such as this:



