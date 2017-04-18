#!/bin/sh

echo "Content-type: application/json"
echo ""

if [ "$REQUEST_METHOD" = "POST" ]; then
     read -n $CONTENT_LENGTH line
     echo $line > /dev/ttyS1
     # feed paper
     echo '' > /dev/ttyS1
     #echo '' > /dev/ttyS1
fi

echo '{"success":"ok"}'

exit 0
