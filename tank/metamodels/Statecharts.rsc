@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module Statecharts

syntax BooleanExpression
        = 
        value: String
 ;
syntax StateMachine
        = 
        Transition transitions+ State top+
 ;
syntax State
        = CompositeState
        | StateMachine state_container Transition internalTransitions+ Event deferrableEvents+
 ;
syntax CompositeState
        = 
        StateVertex subVertexes+ Boolean isConcurrent
 ;
syntax Transition
        = 
        StateMachine transSM_container State transS_container Event trigger Guard guard StateVertex source StateVertex target
 ;
syntax StateVertex
        = State
        | CompositeState sv_container Transition outgoing+ Transition incoming+
 ;
syntax Guard
        = 
        Transition gua_container BooleanExpression expression
 ;
syntax Event
        = 
        Transition evt_container+ State targets+
 ;
