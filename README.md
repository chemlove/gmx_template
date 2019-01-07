# MD simulations template
This is a template/example of a pipeline for MD simulations in gromacs and their analysis


## Environment installation
- Python 3
- `conda install -c intbio gromacs=2018.3`
- `conda install -c conda-forge jupyterlab` OR `conda install jupyter`
- `conda install -c conda-forge mdanalysis`
- `conda install -c conda-forge wget`
- `conda install nglview -c conda-forge`
- `conda install -c conda-forge ffmpeg`
- `conda install -c intbio seq_tools`
- `conda install -c acellera propka`



### Install VMD
for Mac there is a conda version
```
git clone git@github.com:intbio/conda.git
conda install -c conda-forge -c "file:/$PWD/conda" vmd=1.9.3
```
Alternatively, just install it manually into specific conda env.

### For jupyterlab
- `conda install nodejs`
- `jupyter-labextension install @jupyter-widgets/jupyterlab-manager@0.33.2`
- `jupyter-labextension install nglview-js-widgets@1.1.2`
