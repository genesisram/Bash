#!/bin/bash

BUCKETS='harmonyvi leftvi rightvi straightvi'

for x in $BUCKETS
do
aws s3 mb s3://$x
done

aws s3 ls
