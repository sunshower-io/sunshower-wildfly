#!/bin/bash
source /scripts/set-version.sh
gradle clean build
mkdir /opt/sunshower-wildfly
mv build/dist/wildfly-11.0.0.Final /opt/sunshower-wildfly
gradle clean
