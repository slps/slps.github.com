@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module HybridAutomata

syntax FiniteTransition
        = 
        ANY trigger ANY guard ANY action
 ;
syntax FiniteState
        = 
        ANY name ANY position ANY isInit
 ;
