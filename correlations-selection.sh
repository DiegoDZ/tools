#!/bin/bash

awk '{print $1, $2, $10, $30}' corr_iLeiLe > correlations_iLeiLe
awk '{print $1, $2, $10, $30}' corr_QQ > correlations_QQ
awk '{print $1, $2, $10, $30}' corr_QPi > correlations_QPi
awk '{print $1, $2, $10, $30}' corr_PiQ > correlations_PiQ
awk '{print $1, $2, $10, $30}' corr_PiPi > correlations_PiPi

