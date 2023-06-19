#!/bin/bash

sudo yum update rpm -y
sudo yum update -y
sudo yum install git -y

git config --global user.email "fahriddin24@gmail.com"
git config --global user.name "fahriddin"

git clone https://github.com/fahriddin23/scripts.git /root/scripts 
