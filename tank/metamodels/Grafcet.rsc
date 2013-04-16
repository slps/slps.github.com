@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module Grafcet

extend lang::std::Whitespace;

layout Standard = Whitespace* !>> [\u0009-\u000D \u0020 \u0085 \u00A0 \u1680 \u180E \u2000-\u200A \u2028 \u2029 \u202F \u205F \u3000];
syntax String
        = 
        String
 ;
syntax Boolean
        = "true"
        | "false"
 ;
syntax LocatedElement
        = 
        NamedElement
 ;
syntax NamedElement
        = Grafcet
        | Element
        | Connection
 ;
syntax Grafcet
        = 
        Element elements+ Connection connections+
 ;
syntax Element
        = Step
        | Transition
 ;
syntax Step
        = 
        Boolean isInitial Boolean isActive String action TransitionToStep incomingConnections+ StepToTransition outgoingConnections+
 ;
syntax Transition
        = 
        String condition StepToTransition incomingConnections+ TransitionToStep outgoingConnections+
 ;
syntax Connection
        = StepToTransition
        | TransitionToStep
 ;
syntax StepToTransition
        = 
        Step from Transition to
 ;
syntax TransitionToStep
        = 
        Transition from Step to
 ;
