#!/bin/bash

ami_id="ami-0055977a6e828a4f4"
instance_type="t3.micro"
DOMAIN_NAME="opsify.online"
HOSTED_ZONE_ID="Z0977219186C15T2CZIRP"

echo "$ami_id"
echo "$instance_type"
echo "$DOMAIN_ANME"
echo "$HOSTED_ZONE_ID"

for instance in $@
do
    echo $instance
done
