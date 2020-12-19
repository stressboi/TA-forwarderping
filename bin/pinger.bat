@echo off
REM -------------------------------------------
REM brodsky@splunk.com 18DEC20
REM takes a local list of IP addresses and pings them and returns the results to Splunk
REM -------------------------------------------

setlocal EnableDelayedExpansion
for /f "usebackq" %%a in ("%SPLUNK_HOME%\etc\apps\TA-pingstuff\bin\pinglist.txt") do ping -w 2000 -n 1 %%a |findstr "Approximate round trip">nul && echo %date% %time% reporting_host=%COMPUTERNAME% target_host=%%a status=Success || echo %date% %time% reporting_host=%COMPUTERNAME% target_host=%%a status=Failed