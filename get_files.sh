#!/bin/bash


case "$1" in
        0)
curl -s https://bb06d1eb07ea8543d3ce493b455852a7d0b1b7f1@raw.githubusercontent.com/intbio/gmx_template/master/0_analyze_pdb.ipynb -o 0_analyze_pdb.ipynb 
            ;;
         
        1)
curl -s https://bb06d1eb07ea8543d3ce493b455852a7d0b1b7f1@raw.githubusercontent.com/intbio/gmx_template/master/1_1_prepare_system.ipynb -o 1_1_prepare_system.ipynb 
            ;;
         
        2)
curl -s https://bb06d1eb07ea8543d3ce493b455852a7d0b1b7f1@raw.githubusercontent.com/intbio/gmx_template/master/2_min_equil.ipynb -o 2_min_equil.ipynb


            ;;
        3)
curl -s https://bb06d1eb07ea8543d3ce493b455852a7d0b1b7f1@raw.githubusercontent.com/intbio/gmx_template/master/3_benchmarking.ipynb -o 3_benchmarking.ipynb


            ;;
        4)
curl -s https://bb06d1eb07ea8543d3ce493b455852a7d0b1b7f1@raw.githubusercontent.com/intbio/gmx_template/master/4_production_run.ipynb -o 4_production_run.ipynb


            ;;
        5)
curl -s https://bb06d1eb07ea8543d3ce493b455852a7d0b1b7f1@raw.githubusercontent.com/intbio/gmx_template/master/5_trj_preprocessing.ipynb -o 5_trj_preprocessing.ipynb


            ;;
        6)
curl -s https://bb06d1eb07ea8543d3ce493b455852a7d0b1b7f1@raw.githubusercontent.com/intbio/gmx_template/master/6_1_basic_analysis.ipynb -o 6_1_basic_analysis.ipynb

            ;;
        60)
curl -s https://bb06d1eb07ea8543d3ce493b455852a7d0b1b7f1@raw.githubusercontent.com/intbio/gmx_template/master/6_0_quality_control.ipynb -o 6_0_quality_control.ipynb


            ;;
        c)
curl -s https://bb06d1eb07ea8543d3ce493b455852a7d0b1b7f1@raw.githubusercontent.com/intbio/gmx_template/master/config.py -o config.py


            ;;
         g)
curl -s https://bb06d1eb07ea8543d3ce493b455852a7d0b1b7f1@raw.githubusercontent.com/intbio/gmx_template/master/get_files.sh -o get_files.sh
chmod u+x get_files.sh


            ;;
            
         s)
curl -s https://bb06d1eb07ea8543d3ce493b455852a7d0b1b7f1@raw.githubusercontent.com/intbio/gmx_template/master/status.ipynb -o status.ipynb


            ;;
          f)
curl -s https://bb06d1eb07ea8543d3ce493b455852a7d0b1b7f1@raw.githubusercontent.com/intbio/gmx_template/master/funcs.py -o funcs.py


            ;;
           all)
curl -s https://bb06d1eb07ea8543d3ce493b455852a7d0b1b7f1@codeload.github.com/intbio/gmx_template/zip/master -o master.zip
unzip master.zip

            ;;
 
esac
