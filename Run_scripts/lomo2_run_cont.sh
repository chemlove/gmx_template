#!/bin/bash -l
#SBATCH -t 72:00:00
#SBATCH -p compute
#SBATCH -J jobname
#SBATCH -o ogmx.%j
#SBATCH -e egmx.%j
#SBATCH -N 10
#SBATCH --ntasks-per-node=2
#SBATCH --cpus-per-task=6

# N - number of nodes, 
# --ntasks-per-node - amount of MPI tasks to run on one node
# --cpus-per-task - amount of MP threads per one MPI task
export OMP_NUM_THREADS=6


#Due to a bug in Gromacs we need to specify -pf and -px files from the pull code explicitly
mpirun -np $(($SLURM_JOB_NUM_NODES * 2)) gmx_mpi mdrun -ntomp $OMP_NUM_THREADS -gputasks 00 -pme cpu -nb gpu -deffnm $1 -cpi $1.cpt -px $1_pullx.xvg -pf $1_pullf.xvg


#Script should be run with 
#module load slurm gromacs/2018-gcc
#sbatch runscript.sh your_tpr_file_name
#To override
#sbatch -p partition_name -t hours:minutes:seconds -N num_nodes runscript.sh your_tpr_file_name