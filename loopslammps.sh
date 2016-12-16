#!/bin/bash

####################################################
# Multiple LAMMPS simulations
# Author: @DiegoDZ. Based on a script by @hiperones.
# Date: 20 may 2016
####################################################


# TEST CLAUSE
# If 'blog.log' exists, then overwrite it and put a timestamp
if [ -e blog.log ]; then
date > blog.log
fi

# LAMMPS simulations
# The lammps input file contains three wildcars (XXXXXX, YYYYYY and ZZZZZZ) which will be replaced
# by the desired command. The new input file is stored separately.
for ((i=53930;i<53933;i++)); do
echo "Doing for simulation with velocity sedd $i" >> blog.log
sed -e 's/XXXXXX/dump positions all custom 100 production.positions.'$i' id type x y z/' -e 's/YYYYYY/dump velocities all custom 100 production.velocities.'$i' id type vx vy vz/' -e 's/ZZZZZZ/velocity lowerWallNoSprings create 10.0 '$i' dist gaussian/' input.walls.production > input.walls.lmp
mpiexec -np 8 ./lmp_mpi < input.walls.lmp > simu.log

done

rm input.walls.lmp
rm log*

date >> blog.log

# EOF 
