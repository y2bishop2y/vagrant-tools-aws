#!/bin/bash

echo "===================" 
echo " Install PIP " 
echo "-------------------"
su vagrant -c "source /home/vagrant/.profile; workon vaws; pip install awscli"
