#!/bin/bash
sudo chmod 0755 ./services/cp1626/cp1626_loader
sudo cp ./services/cp1626/cp1626_loader /etc/init.d
sudo update-rc.d cp1626_loader defaults
sudo /etc/init.d/cp1626_loader start
