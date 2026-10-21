#!/bin/bash
##=======================Defining Variables====================##
ami_id="ami-0055977a6e828a4f4"
instance_type="t3.micro"
domain_name="opsify.online"
hosted_zone_id="Z0977219186C15T2CZIRP"

echo "ami_id is: $ami_id"
echo "instance_type is: $instance_type"
echo "domain_name is: $DOMAIN_NAME"
echo "hosted_zone_id is: $HOSTED_ZONE_ID"
##===================Reading Components from CMD Line====================##
for instance in $@
do
    echo "Creating instance: $instance"
done
