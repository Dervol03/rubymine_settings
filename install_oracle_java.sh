#!/bin/bash

sudo add-apt-repository ppa:webupd8team/java
sudo apt-get update
sudo apt-get purge openjdk*
sudo apt-get install oracle-java8-installer oracle-java8-set-default -y

sudo apt-get autoremove -y && sudo apt-get autoclean -y
