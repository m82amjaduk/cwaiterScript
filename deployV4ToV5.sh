#!/bin/bash 
# Run $ chmod +x dropbox.sh
# $ ./dropbox.sh ukb1786


#### Read Me
#
################################################
#### Config 
LIVE_SITE_CODE=$1;
TEMP_SITE_CODE=$2;
BACKUP_DIR="/home/amzad/Dropbox/03 DB/cWaiterSoftware/temp/";
################################################

#### No Change Config
NOW=$(date +'%Y:%m:%d-%H:%M:%S')
LOG_FILE="/tmp/dropbox_install_$NOW"   
MACHINE=$(uname -m) 

NORMAL=$(tput sgr0);
MESSAGE=$(tput setaf 2; tput bold);
COMMAND=$(tput setaf 3);
DANGER=$(tput setaf 1); 
danger() { echo -e -n "$DANGER$*$NORMAL"; }
message() { echo -e -n "$MESSAGE$*$NORMAL"; }
command() { echo -e -n "$COMMAND$*$NORMAL"; }
################################################

#### Build 
LIVE_SQL_FILE=$LIVE_SITE_CODE"_"$NOW"_old_backup.sql";
TEMP_SQL_FILE=$TEMP_SITE_CODE"_"$NOW"_test_env_and_deployed.sql";
WWW_DIR="/home/$LIVE_SITE_CODE/public_html"
################################################

message "\n# Backup live SQL\n"; 
command "pg_dump -U postgres cwaiter_$LIVE_SITE_CODE -O --inserts -x --no-privileges -f '/home/cwaiter/public_html/$LIVE_SQL_FILE' \n"; 
command "pg_dump -U postgres cwaiter_$TEMP_SITE_CODE -O --inserts -x --no-privileges -f '/home/cwaiter/public_html/$TEMP_SQL_FILE' \n";

message "\n# Download backup to $BACKUP_DIR \n";
command "chmod 755 '/home/cwaiter/public_html/$LIVE_SQL_FILE' '/home/cwaiter/public_html/$TEMP_SQL_FILE' \n"
command "wget http://cwaiter.com/$LIVE_SQL_FILE -P $BACKUP_DIR  \n" 
command "wget http://cwaiter.com/$TEMP_SQL_FILE -P $BACKUP_DIR  \n" 

danger "\n# upload the file 'master/clean_system.sql' // delete user data, invoices data. \n\n" 

# keep dump copy from PgAdmin
# copy dump.sql from download folder name it _from_PgAdmin
# delete ukb1838 database, and create a new one

message "\n# Deploy New databse\n";
command "psql -U cwaiter -c 'drop database cwaiter_$LIVE_SITE_CODE'\n" ;
command "psql -U cwaiter -c 'create database cwaiter_$LIVE_SITE_CODE'\n" ;
command "psql -U cwaiter cwaiter_$LIVE_SITE_CODE < '/home/cwaiter/public_html/$TEMP_SQL_FILE'  \n\n"

# delete user data, invoices data.

message "\n# Upload u02.zip \n";
command "tar xvf /home/epos/public_html/cu/u/u03.tar -C $WWW_DIR  \n"; 
command "chmod 755 -R $WWW_DIR/u  \n"; 
command "chown $LIVE_SITE_CODE:$LIVE_SITE_CODE -R $WWW_DIR/u  \n"; 

 

danger " 
 upgrade software.
 change doamin name.
 check paypal and ecom settings.
 send email to Lalita, verify, inform client, and close the call on satisfaction.
 delete test db and get ready for next. change domain name
 Keep the Files in correct location $BACKUP_DIR ";




