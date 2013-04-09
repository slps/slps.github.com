@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module Statecharts

syntax BooleanExpression
        = 
        value: ANY
 ;
syntax StateMachine
        = 
        ANY transitions+ ANY top+
 ;
syntax State
        = 
        ANY state_container ANY internalTransitions+ ANY deferrableEvents+
 ;
syntax CompositeState
        = 
        ANY subVertexes+ ANY isConcurrent
 ;
syntax Transition
        = 
        ANY transSM_container ANY transS_container ANY trigger ANY guard ANY source ANY target
 ;
syntax StateVertex
        = 
        ANY sv_container ANY outgoing+ ANY incoming+
 ;
syntax Guard
        = 
        ANY gua_container ANY expression
 ;
syntax Event
        = 
        ANY evt_container+ ANY targets+
 ;
