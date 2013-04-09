@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module PetriNet_extended

syntax LocatedElement
        = 
        ()
 ;
syntax NamedElement
        = 
        ()
 ;
syntax PetriNet
        = 
        ANY elements+ ANY arcs+ ANY execs+
 ;
syntax Element
        = 
        ()
 ;
syntax Place
        = 
        ANY incomingArc+ ANY outgoingArc+
 ;
syntax Transition
        = 
        ANY incomingArc+ ANY outgoingArc+
 ;
syntax Arc
        = 
        ()
 ;
syntax PlaceToTransition
        = 
        ANY from ANY to
 ;
syntax TransitionToPlace
        = 
        ANY from ANY to
 ;
syntax Execution
        = 
        ANY net ANY markings+ ANY movements+
 ;
syntax Token
        = 
        ANY placedAt ANY marking
 ;
syntax Marking
        = 
        ANY exec ANY tokens+
 ;
syntax Movement
        = 
        ANY exec ANY fire ANY source ANY target
 ;
