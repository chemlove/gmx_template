#to make movie run vmd -e view_nucl.tcl -args big_data/h3-h4_xray.pdb big_data/h3-h4.xtc title 1 1 1 1 1
#first number - smoothing window
#second number - 0/1 do movie of preview
#third number - 0/1 render with tachyon or not (tachyon allows commandline rendering)
#forth number -0/1 display time or not
#forth number -0/1 update or not ssecondary structure during movie
display projection   Orthographic
display depthcue off
display rendermode GLSL

mol load pdb GMX_run/init_solv_ions.pdb
mol addfile GMX_run/1_minim.trr waitfor all

pbc box
pbc wrap -all

set molid [ molinfo top ]
 

mol delrep 0 top

#  H3 H3 Dimer representation
mol representation Lines
mol selection {within 3 of (protein or nucleic)}
mol addrep top

