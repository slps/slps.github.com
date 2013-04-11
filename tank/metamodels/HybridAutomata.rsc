@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module HybridAutomata

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
syntax FiniteTransition
        = 
        String trigger String guard String action
 ;
syntax FiniteState
        = 
        String name String position Boolean isInit
 ;
