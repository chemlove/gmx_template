movtitle="MD simulations of H3-H4 with DNA, tails truncated"
folder="h3-h4_tm_30DNA" #unique folder name for simulations on supercomputer
pname=folder #project name
ssh_host="lomo2g" #The name of entry in ssh config file to connect to a supercomputer
descr="""
# MD simulations of H3-H4 with 30 bp of DNA, tails truncated
- AMBER14SB force field
- 150 mM NaCl
- box 2nm
"""
