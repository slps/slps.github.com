@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module ControllerUML

syntax ControllerAttribute
        = 
        controller: Controller
 ;
syntax Controller
        = 
        ControllerAttribute controllerAttribute+ StateMachine behavior
 ;
syntax StateMachine
        = 
        State states+
 ;
syntax State
        = SubControllerState
        | ViewState
        | State substates+ State theContainer StateTransition outGoing+ StateTransition incoming+
 ;
syntax SubControllerState
        = 
        controller: Controller
 ;
syntax ViewState
        = 
        ()
 ;
syntax StateTransition
        = 
        State source State target Event trigger StateMachineAction effect
 ;
syntax StateMachineAction
        = 
        ()
 ;
syntax Event
        = 
        ()
 ;
