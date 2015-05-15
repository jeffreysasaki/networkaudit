# securelogger.sh
# By: Jeffrey Sasaki
#
# Finds /var/log/secure logs and concatenate all notable secure files into
# one file

NETWORK=n1
FILENAME=testsecure
LOGPATH=/run/media/root/Passport/$NETWORK-importantfiles/log
WORKPATH=/run/media/root/Passport/workfile-$NETWORK

# find tcpdump log files in /var/log/snort and perform alert logging

concat_secure()
{
	cat $LOGPATH/secure* >> $WORKPATH/final-log/$FILENAME
}

# sequence of script
concat_secure
