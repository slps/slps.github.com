@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module GWPNV4

syntax Place
        = 
        ANY net ANY out+ ANY in+
 ;
syntax Transition
        = 
        ANY net ANY in+ ANY out+
 ;
syntax Net
        = 
        ANY place+ ANY transition+
 ;
syntax Arc
        = 
        ()
 ;
syntax PTArc
        = 
        ANY dst ANY src
 ;
syntax TPArc
        = 
        ANY src ANY dst
 ;
