#!/bin/bash
sudo chmod 0755 ./services/cp1616/cp1616_loader
sudo cp ./services/cp1616/cp1616_loader /etc/init.d
sudo update-rc.d cp1616_loader defaults
sudo /etc/init.d/cp1616_loader start
