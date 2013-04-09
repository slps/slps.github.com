@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module GWPNV2

syntax Place
        = 
        Net net PTArc out+ TPArc in+
 ;
syntax Transition
        = 
        Net net PTArc in+ TPArc out+
 ;
syntax Net
        = 
        Place place+ Transition transition+
 ;
syntax PTArc
        = 
        Transition dst Place src
 ;
syntax TPArc
        = 
        Transition src Place dst
 ;
