@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module ControllerUML

syntax ControllerAttribute
        = 
        controller: ANY
 ;
syntax Controller
        = 
        ANY controllerAttribute+ ANY behavior
 ;
syntax StateMachine
        = 
        ANY states+
 ;
syntax State
        = 
        ANY substates+ ANY theContainer ANY outGoing+ ANY incoming+
 ;
syntax SubControllerState
        = 
        controller: ANY
 ;
syntax ViewState
        = 
        ()
 ;
syntax StateTransition
        = 
        ANY source ANY target ANY trigger ANY effect
 ;
syntax StateMachineAction
        = 
        ()
 ;
syntax Event
        = 
        ()
 ;
