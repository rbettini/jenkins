#!/bin/bash

### Run all commands with sudo privileges

yum install java-1.8.0-openjdk-devel -y
curl --silent --location http://pkg.jenkins-ci.org/redhat-stable/jenkins.repo | tee /etc/yum.repos.d/jenkins.repo
rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io.key
yum install jenkins -y

#systemctl enable jenkins.service
systemctl start jenkins.service

sleep 5
systemctl status jenkins
