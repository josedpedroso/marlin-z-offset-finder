; Script to find the probe's z-offset, for Marlin-based printers
G28 ; home all axes
M104 S150 ; preheat hot end to clear debris from nozzle
M190 S65 ; heat bed
G4 S60 ; wait for bed temperature to stabilize
G90 ; use absolute positioning
M851 Z0 ; set probe Z offset to 0
M104 S0 ; turn off hot end for probing
G29 ; level bed with sensor
M140 S0 ; turn off heated bed
M420 S1 ; enable leveling mesh
G0 X111 Y111 Z0 ; move to the middle
G92 Z3 ; set current z position to 3mm to allow lowering further
G91 ; use relative positioning
M0 Lower Z? (at 0) ; use a piece of paper to know when to stop lowering z
G0 Z-0.08
M0 Lower Z? (at -0.08)
G0 Z-0.08
M0 Lower Z? (at -0.16)
G0 Z-0.08
M0 Lower Z? (at -0.24)
G0 Z-0.08
M0 Lower Z? (at -0.32)
G0 Z-0.08
M0 Lower Z? (at -0.40)
G0 Z-0.08
M0 Lower Z? (at -0.48)
G0 Z-0.08
M0 Lower Z? (at -0.56)
G0 Z-0.08
M0 Lower Z? (at -0.64)
G0 Z-0.08
M0 Lower Z? (at -0.72)
G0 Z-0.08
M0 Lower Z? (at -0.80)
G0 Z-0.08
M0 Lower Z? (at -0.88)
G0 Z-0.08
M0 Lower Z? (at -0.96)
G0 Z-0.08
M0 Lower Z? (at -1.04)
G0 Z-0.08
M0 Lower Z? (at -1.12)
G0 Z-0.08
M0 Lower Z? (at -1.20)
G0 Z-0.08
M0 Lower Z? (at -1.28)
G0 Z-0.08
M0 Lower Z? (at -1.36)
G0 Z-0.08
M0 Lower Z? (at -1.44)
G0 Z-0.08
M0 Lower Z? (at -1.52)
G0 Z-0.08
M0 Lower Z? (at -1.60)
G0 Z-0.08
M0 Lower Z? (at -1.68)
G0 Z-0.08
M0 Lower Z? (at -1.76)
G0 Z-0.08
M0 Lower Z? (at -1.84)
G0 Z-0.08
M0 Lower Z? (at -1.92)
G0 Z-0.08
M0 Lower Z? (at -2.00)
G0 Z-0.08
M0 Lower Z? (at -2.08)
G0 Z-0.08
M0 Lower Z? (at -2.16)
G0 Z-0.08
M0 Lower Z? (at -2.24)
G0 Z-0.08
M0 Lower Z? (at -2.32)
G0 Z-0.08
M0 Lower Z? (at -2.40)
G0 Z-0.08
M0 Lower Z? (at -2.48)
G0 Z-0.08
M0 Lower Z? (at -2.56)
G0 Z-0.08
M0 Lower Z? (at -2.64)
G0 Z-0.08
M0 Lower Z? (at -2.72)
G0 Z-0.08
M0 Lower Z? (at -2.80)
G0 Z-0.08
M0 Lower Z? (at -2.88)
G0 Z-0.08
M0 Lower Z? (at -2.96)
G0 Z-0.08
