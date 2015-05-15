# snortsnarfer.sh
# By: Jeffrey Sasaki
#
# Performs SnortSnarf on multiple alert files

NETWORK=n3
SNARFBINPATH=/root/Downloads/SnortSnarf-1.0
LOGPATH=/run/media/root/Passport/$NETWORK-importantfiles/pcap
WORKPATH=/run/media/root/Passport/workfile-$NETWORK/final-log


# find tcpdump log files in /var/log/snort and perform alert logging
snortsnarfer()
{
	find $WORKPATH -name 'alert.full*' | while read line
		do
			cd $SNARFBINPATH
				./snortsnarf.pl $line -d $WORKPATH/snortsnarf
				done
}

# sequence of script
snortsnarfer
