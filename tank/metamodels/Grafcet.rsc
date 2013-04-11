@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module Grafcet

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
