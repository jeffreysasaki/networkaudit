# pcaplogger.sh
# By: Jeffrey Sasaki
# 
# Finds pcap files and perform a snort scan that logs to /var/log/snort
# The tcpdump.logs are then reprocessed and convereted to csv format.
# pcaps can be found in the network folders

NETWORK=n3
LOGPATH=/run/media/root/Passport/$NETWORK-importantfiles/big-pcaps
WORKPATH=/run/media/root/Passport/workfile-$NETWORK-b/final-log/big

pcap_alert()
{
	find $LOGPATH -name 'june3-2.pcap' | while read line
		do
			snort -A full -r "$line" -c /etc/snort/snort.conf -l $WORKPATH
				done
}

# find tcpdump log files in /var/log/snort and perform alert logging
tcpdump_snort()
{
	find $WORKPATH -name 'tcpdump.log.*' | while read line
		do
			snort -r $line -c /etc/snort/snort.conf -l $WORKPATH
				done
}

# move alert.csv and alert.log file from /var/log/snort to the workpath 
move_csv()
{
	mv /var/log/snort/alert.* $WORKPATH/final-log
}

# sequence of script
pcap_alert
tcpdump_snort
move_csv
