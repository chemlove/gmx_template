exec mkdir -p tmp/dat

set render 0
set render [lindex $argv 0]

set timesh 0
set timesh [lindex $argv 1]
    
mol delete 0    
    
set first 1
set last 1000
set nframes [expr  [molinfo 1 get numframes] - 1 ]
set nframes 20


#mol top 0
add_text_layer TIME

#animate goto 0
#render snapshot ../../analysis_data/initial.tga

for {set i $first} {$i <= $nframes} {incr i 1} {
animate goto $i
mol ssrecalc 0
mol delete top
add_text_layer TIME
draw color 0
set time [format "Time: %5.1f ns" [expr $i * 1.0]]
if {$timesh == 1 } {
draw text " $txtx [expr $txty-(27*$txtstep)] 0 " $time size 1.5 thickness 3
}

display update

if {$render == 1 } {
render TachyonInternal tmp/dat/$i.dat.tga
} else {

render snapshot tmp/dat/$i.dat.tga
}

}
