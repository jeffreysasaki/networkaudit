Network Traffic Audit
==============================================
COMP 8006 - Final Project
By: Jeffrey Sasaki - A00632810

Description:
------------------------------------------------------------------------------
This project features a full Network Traffic Audit Report on three separate
networks. The project required extensive use of the following tools:

- Snort - https://www.snort.org/
- SnortSnarf - http://sourceforge.net/projects/snortsnarf/
- Splunk - http://www.splunk.com/
- Microsoft Excel - https://products.office.com/en-us/excel
- Wireshark - https://www.wireshark.org/

Additionally, custom script files were used to process log files and traffic
pcap files, found in the scripts folder:

- pcaplogger.sh - Performs a snort scan on the given pcap file
- securelogger.sh - Concatenate all ssh log files into one file
- snortsnarfer.sh - Runs SnortSnarf on the the given alert files

Documentation:
-------------------------------------------------------------------------------
The final report can be viewed in the **Report-v3-pub.pdf** file.