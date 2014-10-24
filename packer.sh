#!/bin/bash 


echo "====================" 
echo "Building AWS test." 
echo "--------------------"
packer build  --debug packer.json
