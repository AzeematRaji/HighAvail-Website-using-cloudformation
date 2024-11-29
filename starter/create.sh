#!/bin/bash

# Usage: ./create.sh <stack-name> <template-file> <parameters-file>

aws cloudformation create-stack --stack-name $1 \
    --template-body file://$2   \
    --parameters file://$3  \
    --capabilities "CAPABILITY_NAMED_IAM"  \
    --region=us-east-1