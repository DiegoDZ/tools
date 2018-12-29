#!/bin/bash

# From an input file, this script selects the desired columns.

awk '{print $1, $2, $10, $30}' correlation_QQ   > selectCorr_QQ
awk '{print $1, $2, $10, $30}' correlation_QPi  > selectcorr_QPi
awk '{print $1, $2, $10, $30}' correlation_PiQ  > selectcorr_PiQ
awk '{print $1, $2, $10, $30}' correlation_PiPi > selectcorr_PiPi

