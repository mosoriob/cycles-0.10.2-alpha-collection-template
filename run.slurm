#!/bin/bash

#SBATCH -J cycles               # Job name
#SBATCH -o output.%j                  # Name of stdout output file (%j expands to jobId)
#SBATCH -p normal                     # Queue name
#SBATCH -N 1                          # Total number of nodes requested (68 cores/node)
#SBATCH -n 1                          # Total number of mpi tasks requested
#SBATCH -t 00:10:00                   # Run time (hh:mm:ss)

module load tacc-singularity

singularity exec docker://mintproject/cycles:0.10.2-alpha ./run   -i2 crops.crop -i1 Arsi_Chole_8.134649754N_39.99855995E.zip  -o4 cycles_nitrogen.dat -o2 cycles_som.dat -o1 cycles_soilProfile.dat -o9 cycles_outputs.txt -o8 cycles_water.dat -o5 cycles_season.dat -o7 cycles_weatherOutput.dat -o3 cycles_crop.dat -o6 cycles_summary.dat  -p2 2017 -p6 0 -p1 2000 -p5 149 -p3 "Maize" -p7 0.05 -p8 FALSE -p4 100
