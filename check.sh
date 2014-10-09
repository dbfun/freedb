#!/bin/bash
cd $(dirname $(readlink -f $0))
source config/db

dbs_select_query="SELECT \`id\`, \`host\`, \`user\`, \`password\`, \`database\` FROM \`dbs\` WHERE \`is_checked\` = 0 LIMIT 1;"

while true
  do

  results=`mysql -s -N -u$dbuser -p$dbpass -h$dbhost --database=$dbname -e "$dbs_select_query"`
  
  if [ "$?" != "0" ]; then
    echo Error database
    exit 1
  fi
  
  read test_id test_host test_user test_password test_database < <(echo "$results")
  
  if [ -z "$test_id" ]; then
    echo 'Done'
    exit 0
  fi

  results=`mysql -s -N -u$test_user -p$test_password -h$test_host --database=$test_database -e ";" 2>&1`

  denied_test=`echo "$results" | grep 'Access denied'`

  if [ -z "$denied_test" ]; then  
    # FREE
    is_access=1
  else
    # NOT FREE
    is_access=0
  fi

  update_query="UPDATE \`dbs\` SET \`is_checked\` = 1, \`is_access\` = $is_access, \`check_date\` = NOW() WHERE \`id\` = $test_id LIMIT 1;"
  results=`mysql -s -N -u$dbuser -p$dbpass -h$dbhost --database=$dbname -e "$update_query"`
  
  if [ "$?" != "0" ]; then
    echo Error database
    exit 1
  fi

done