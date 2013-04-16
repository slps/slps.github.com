@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module ControllerUML

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
syntax Integer
        = 
        Integer
 ;
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
        State substates+ State theContainer StateTransition outGoing+ StateTransition incoming+
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
