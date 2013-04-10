@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module HybridAutomata

syntax FiniteTransition
        = 
        String trigger String guard String action
 ;
syntax FiniteState
        = 
        String name String position Boolean isInit
 ;
