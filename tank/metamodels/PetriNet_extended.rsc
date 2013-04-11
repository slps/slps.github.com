@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module PetriNet_extended

syntax LocatedElement
        = 
        NamedElement
 ;
syntax NamedElement
        = PetriNet
        | Element
        | Arc
 ;
syntax PetriNet
        = 
        Element elements+ Arc arcs+ Execution execs+
 ;
syntax Element
        = Place
        | Transition
 ;
syntax Place
        = 
        TransitionToPlace incomingArc+ PlaceToTransition outgoingArc+
 ;
syntax Transition
        = 
        PlaceToTransition incomingArc+ TransitionToPlace outgoingArc+
 ;
syntax Arc
        = PlaceToTransition
        | TransitionToPlace
 ;
syntax PlaceToTransition
        = 
        Place from Transition to
 ;
syntax TransitionToPlace
        = 
        Transition from Place to
 ;
syntax Execution
        = 
        PetriNet net Marking markings+ Movement movements+
 ;
syntax Token
        = 
        Place placedAt Marking marking
 ;
syntax Marking
        = 
        Execution exec Token tokens+
 ;
syntax Movement
        = 
        Execution exec Transition fire Marking source Marking target
 ;
syntax String
        = 
        String
 ;
syntax Integer
        = 
        Integer
 ;
