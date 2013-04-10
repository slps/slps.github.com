@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module Automaton

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
