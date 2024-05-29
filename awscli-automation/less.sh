#!/bin/bash

STATE=$( aws ec2 describe-instances --instance-ids i-0108dfe02e4fc64dd | grep running | cut -c34-40 )

if [ $STATE = running ]
then 
echo "ec2 is living and thriving"
else
echo "ec2 is unalive but will live in 3..2..1.."
aws ec2 start-instances --instance-ids i-0108dfe02e4fc64dd
fi
