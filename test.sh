#!/bin/bash
 
PROGNAME=`basename $0`

print_usage() {
  echo ""
  echo "Executes ssh command to check if ssh is working."
  echo ""
  echo "Usage: $PROGNAME <hostname> | -h | --help"
  echo ""
}

case "$1" in
  --help)
         print_usage
         exit 0 
         ;;
  -h)
         print_usage
         exit 0 
         ;;
   *)
         res=$(ssh $1 'uptime | sed "s/.*\(up.*user.\).*/\1/"' 2>&1)
         status=$?
	 if [ $status -ne 0 ]; then
           echo "SSH CRITICAL - $res" 
           exit 2
         else
           echo "SSH OK - host is $res"
           exit 0
         fi
         ;;
esac

