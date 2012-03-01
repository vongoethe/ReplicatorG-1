(**** The Replicator Utility ****)
( Change filament in extruder T1 )

M70 P10 (I'm heating up my   extruder so we can  pull out the        filament.)
G21 (set units to mm)
G90 (set positioning to absolute)
M108 R3.0 T1 (set extruder speed left)
M103 T1 (Make sure extruder is off)

M73 P0 (enable build progress 'Change Filament')
M104 S225 T1 (set extruder temperature)
M6 T1 (wait for toolhead parts, nozzle, HBP, etc., to reach temperature)


M71 (OK! I'm going to runmy extruder motor inreverse so the      filament is released)
M102 T1 (Extruder on, reverse) 
M70 P90(Grasp the filament  near the extruder   input and pull.)
G04 P90000 (Wait t/1000 seconds)
M71 (Awesome! Unmount theold filament, load  the new filament.   Press M to continue.)
M101 T1 (Extruder on, forward)
M71 (OK! I'm going to runmy extruder motor   so the filament willpull through.)
M70 P120(Push the filament inthrough the grey    ring until the motortugs it in.     )
G04 P120000 (Wait t/1000 seconds)

M103 T1 (Extruder off)
(**** begin cool for safety ****)
M104 S0 T1 (set extruder temperature)
M71 (I'm done loading my filament! If plasticisn't loaded go to  makerbot.com/help   )
M73 P100 (build end notification)
(**** end cool for safety ****)
(**** end of end.gcode ****)
