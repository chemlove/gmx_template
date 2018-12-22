#display rendermode GLSL
mol delrep 0 top

#  H3 H4 Dimer representation
mol representation NewCartoon 0.840000 20.000000 2.630000 0
mol color Chain
mol selection {chain A B}
mol material AOShiny
mol addrep top
mol selupdate 0 top 0
mol colupdate 0 top 0

color Chain A blue3
color Chain B green
color Chain C yellow2
color Chain D red3
color Chain E blue3
color Chain F green
color Chain G yellow2
color Chain H red3