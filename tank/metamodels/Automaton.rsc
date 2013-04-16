@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module Automaton

extend lang::std::Whitespace;

layout Standard = Whitespace* !>> [\u0009-\u000D \u0020 \u0085 \u00A0 \u1680 \u180E \u2000-\u200A \u2028 \u2029 \u202F \u205F \u3000];
syntax FiniteAutomaton
        = 
        String alphabet+ Transition transitionSet+ State initialState State finalStateSet+ State StateSet+
 ;
syntax Transition
        = 
        String letter State source State target
 ;
syntax State
        = 
        String name State combination
 ;
syntax String
        = 
        String
 ;
syntax Integer
        = 
        Integer
 ;
