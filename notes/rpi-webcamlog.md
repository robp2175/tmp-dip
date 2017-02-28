Install
=======
```
apt-get update && apt-get -y install \
motion \
ssmtp \
mpack
```

Configure
=========
In `/etc/motion/motion.conf` file, change to the following:
```
daemon on
output_pictures off
on_movie_end send_video.sh %f
```

In `/etc/default/motion` file, change to the following:
```
start_motion_daemon=yes
```

Change `/var/lib/motion/` group to `motion`:
```
chown root:motion /var/lib/motion
chmod g+rwx /var/lib/motion
chmod -R g+rw /var/lib/motion
```

Create the `/usr/local/bin/send_video.sh` with the following content:
```
#!/bin/sh

MOTION_FOLDER="/var/lib/motion/"
ATTPATH=$1
ATTFILE=$(basename $ATTPATH)
MAILTO="your@addre.ss"

##
# Send just recorded file
#
mpack -s "video $ATTFILE captured" $ATTPATH $MAILTO

##
# If less then 0.5G of free size left, delete the first file in
# $MOTION_FOLDER
#
if [ `df --output=avail / | sed -n '2p'` -le 500000 ]
then
        TO_DEL=`ls $MOTION_FOLDER | head -1`
        if [ -z $TO_DEL ]
        then
                echo "No file in "$MOTION_FOLDER
                exit 2
        else
                rm $MOTION_FOLDER$TO_DEL
        fi
fi
```

In `/etc/ssmtp/ssmtp.conf` file, change to the following
[(source)](http://iqjar.com/jar/sending-emails-from-the-raspberry-pi/):
```
#
# Config file for sSMTP sendmail
#
# The person who gets all mail for userids < 1000
# Make this empty to disable rewriting.
root=postmaster

# The place where the mail goes. The actual machine name is required no
# MX records are consulted. Commonly mailhosts are named mail.domain.com
mailhub=smtp.gmail.com:587

# Where will the mail seem to come from?
#rewriteDomain=

# The full hostname
hostname=minibian

# Are users allowed to set their own From: address?
# YES - Allow the user to specify their own From: address
# NO - Use the system generated From: address
#FromLineOverride=YES

AuthUser=GmailAccHere
AuthPass=GmailPassHere
UseSTARTTLS=YES
```
