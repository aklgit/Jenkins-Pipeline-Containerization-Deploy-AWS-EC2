#!/bin/bash

echo maven-project > /tmp/.auth
echo $BUILD_TAG >> /tmp/.auth
echo $PASS >> /tmp/.auth

scp -i /opt/aklawsdeployjenkinsfile.pem /tmp/.auth ec2-user@0.00.000.00:/tmp/.auth
scp -i /opt/aklawsdeployjenkinsfile.pem ./jenkins/deploy/publish ec2-user@0.00.000.00:/tmp/publish
#ececute the script from remote
ssh -i /opt/aklawsdeployjenkinsfile.pem  ec2-user@0.00.000.00 "/tmp/publish"
