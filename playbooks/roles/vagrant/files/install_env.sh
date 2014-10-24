#!/bin/bash

echo "===================" 
echo " Install virtual env " 
echo "-------------------"
su vagrant -c "source /home/vagrant/.profile; mkvirtualenv vaws"
