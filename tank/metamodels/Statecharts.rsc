@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module Statecharts

extend lang::std::Whitespace;

layout Standard = Whitespace* !>> [\u0009-\u000D \u0020 \u0085 \u00A0 \u1680 \u180E \u2000-\u200A \u2028 \u2029 \u202F \u205F \u3000];
syntax Integer
        = 
        Integer
 ;
syntax String
        = 
        String
 ;
syntax Boolean
        = "true"
        | "false"
 ;
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
