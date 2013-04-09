@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module Grafcet

syntax LocatedElement
        = 
        ()
 ;
syntax NamedElement
        = 
        ()
 ;
syntax Grafcet
        = 
        ANY elements+ ANY connections+
 ;
syntax Element
        = 
        ()
 ;
syntax Step
        = 
        ANY isInitial ANY isActive ANY action ANY incomingConnections+ ANY outgoingConnections+
 ;
syntax Transition
        = 
        ANY condition ANY incomingConnections+ ANY outgoingConnections+
 ;
syntax Connection
        = 
        ()
 ;
syntax StepToTransition
        = 
        ANY from ANY to
 ;
syntax TransitionToStep
        = 
        ANY from ANY to
 ;
