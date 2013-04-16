@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module PetriNet_extended

extend lang::std::Whitespace;

layout Standard = Whitespace* !>> [\u0009-\u000D \u0020 \u0085 \u00A0 \u1680 \u180E \u2000-\u200A \u2028 \u2029 \u202F \u205F \u3000];
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
