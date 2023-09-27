#!/bin/bash
#SBATCH --nodes=1
#SBATCH --cpus-per-task=24
#SBATCH --time=24:00:00
#SBATCH --mem=10gb
#SBATCH --export=NONE
export KMP_AFFINITY=compact,1,0
export OMP_NUM_THREADS=24
QuantyLatest UF6_6d.qty M4 4| tee output/out.M4_UF6_6d_4
