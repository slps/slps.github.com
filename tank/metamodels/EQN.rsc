@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module EQN

syntax RoutingChain
        = 
        ANY queuingNetwork+
 ;
syntax QueuingNetwork
        = 
        ANY center+ ANY workLoad
 ;
syntax ExecutionGraph
        = 
        ANY nodeNested ANY node+
 ;
syntax Center
        = 
        ANY node ANY queuingNetwork
 ;
syntax Node
        = 
        ANY nested ANY executionGraph ANY demand+
 ;
syntax Special
        = 
        ()
 ;
syntax ActiveCenter
        = 
        ()
 ;
syntax PassiveCenter
        = 
        ()
 ;
syntax Source
        = 
        ()
 ;
syntax Sink
        = 
        ()
 ;
syntax Fork
        = 
        ()
 ;
syntax Join
        = 
        ()
 ;
syntax Split
        = 
        ()
 ;
syntax Allocate
        = 
        ()
 ;
syntax Release
        = 
        ()
 ;
