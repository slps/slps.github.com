@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module GWPNV1

syntax Place
        = 
        Net net Transition src+ Transition dst+
 ;
syntax Transition
        = 
        Net net Place src+ Place dst+
 ;
syntax Net
        = 
        Place place+ Transition transition+
 ;
