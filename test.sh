#!/bin/bash
#
# Test the JMeter Docker image using a trivial test plan.

# Example for using User Defined Variables with JMeter
# These will be substituted in JMX test script
# See also: http://stackoverflow.com/questions/14317715/jmeter-changing-user-defined-variables-from-command-line
export TARGET_HOST="amazon.in"
#export TARGET_PATH="/ap/signin"
T_DIR=tests/amazon
# Reporting dir: start fresh
R_DIR=C:amazon.project\report
mkdir -p ${R_DIR}

./run.sh -JMeterTARGET_HOST=${TARGET_HOST} -n -t ${T_DIR}/Test_Plan.jmx -l ${R_DIR}/amazonresults_1.jtl

