@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module Automaton

syntax FiniteAutomaton
        = 
        ANY alphabet+ ANY transitionSet+ ANY initialState ANY finalStateSet+ ANY StateSet+
 ;
syntax Transition
        = 
        ANY letter ANY source ANY target
 ;
syntax State
        = 
        ANY name ANY combination
 ;
