#!/bin/bash

STATE=$(aws ec2 describe-instances --instance-ids i-0a07cba97eb578a79 | grep running | cut -c34-40)

if [ $STATE = running ]
then 
echo "your ec2 is alive!"
else
echo "your ec2 is dead but will become alive in 3..2..1.."
aws ec2 start-instances --instance-ids i-0a07cba97eb578a79
fi
