@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module Amble

syntax Element
        = 
        ()
 ;
syntax Program
        = 
        ANY processes+ ANY networks+
 ;
syntax Process
        = 
        ANY minId ANY maxId ANY instancesNb ANY states+ ANY transitions+ ANY initial ANY variables+ ANY connectedTo+
 ;
syntax State
        = 
        ANY isInitial ANY incoming+ ANY outgoing+
 ;
syntax Transition
        = 
        ()
 ;
syntax Trans
        = 
        waitFor: ANY
 ;
syntax Strans
        = 
        ANY guard ANY action ANY source ANY target
 ;
syntax Transall
        = 
        waitFor: ANY
 ;
syntax Guard
        = 
        ANY name
 ;
syntax Action
        = 
        ANY name
 ;
syntax Network
        = 
        ANY channels+
 ;
syntax Channel
        = 
        ANY messages+ ANY source ANY target
 ;
syntax Message
        = 
        ANY name
 ;
syntax Variable
        = 
        ANY type ANY initValue
 ;
