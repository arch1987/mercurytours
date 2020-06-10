#!/bin/bash
#
# Test the JMeter Docker image using a trivial test plan.

# Example for using User Defined Variables with JMeter
# These will be substituted in JMX test script
# See also: http://stackoverflow.com/questions/14317715/jmeter-changing-user-defined-variables-from-command-line
export TARGET_HOST="www.amazon.in"
#export TARGET_PATH="/ap/signin?openid.pape.max_auth_age=0&openid.return_to=https%3A%2F%2Fwww.amazon.in%2F%3Fref_%3Dnav_signin&openid.identity=http%3A%2F%2Fspecs.openid.net%2Fauth%2F2.0%2Fidentifier_select&openid.assoc_handle=inflex&openid.mode=checkid_setup&openid.claimed_id=http%3A%2F%2Fspecs.openid.net%2Fauth%2F2.0%2Fidentifier_select&openid.ns=http%3A%2F%2Fspecs.openid.net%2Fauth%2F2.0&"

T_DIR=tests/amazon
# Reporting dir: start fresh
R_DIR=tests/amazon/report/report1

./run.sh $TARGET_PATH -Dlog_level.jmeter=DEBUG \ -JTARGET_HOST=${TARGET_HOST} \ -n -t ${T_DIR}/Test_Plan.jmx -l ${T_DIR}/performance_results/amazonresults1.jtl\
	-e -o ${R_DIR}

