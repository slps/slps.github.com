@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module PetriNet

syntax Element
        = 
        ()
 ;
syntax PetriNet
        = 
        ANY places+ ANY transitions+ ANY arcs+
 ;
syntax Place
        = 
        ANY incoming+ ANY outgoing+
 ;
syntax Transition
        = 
        ANY incoming+ ANY outgoing+
 ;
syntax Arc
        = 
        ()
 ;
syntax PlaceToTransArc
        = 
        ANY source ANY target
 ;
syntax TransToPlaceArc
        = 
        ANY source ANY target
 ;
