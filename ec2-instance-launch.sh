#!/bin/bash

ami_id="ami-0220d79f3f480ecf5"
instance_type="t3.micro"

echo "$ami_id"
echo "$instance_type"
echo $@

for instance in $@
do
    echo $instnce
done
