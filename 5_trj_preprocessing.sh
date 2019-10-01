#!/usr/bin/env bash
#Launched as ./5_trj_preprocessing.sh deffnm out
mkdir -p tmp
mkdir -p big_data
#The group here may need to be adjusted if you have other components except protein, e.g. DNA
gmx trjconv -n GMX_system/index.ndx -f GMX_run/${1}.xtc -s GMX_run/${1}.tpr -o tmp/${1}_1.xtc -pbc whole << !
!Water_and_ions
!


gmx trjconv -n GMX_system/index.ndx -f tmp/${1}_1.xtc -s GMX_run/${1}.tpr -o tmp/${1}_2.xtc -pbc cluster << !
!Water_and_ions
!Water_and_ions
!

gmx trjconv  -f tmp/${1}_2.xtc -s GMX_system/sys_ref.pdb -o big_data/${2}.xtc -fit rot+trans << !
System
System
!