@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module EQN

syntax RoutingChain
        = 
        QueuingNetwork queuingNetwork+
 ;
syntax QueuingNetwork
        = 
        Center center+ RoutingChain workLoad
 ;
syntax ExecutionGraph
        = 
        Node nodeNested Node node+
 ;
syntax Center
        = Special
        | ActiveCenter
        | PassiveCenter
        | Node node QueuingNetwork queuingNetwork
 ;
syntax Node
        = 
        ExecutionGraph nested ExecutionGraph executionGraph Center demand+
 ;
syntax Special
        = Source
        | Sink
        | Fork
        | Join
        | Split
        | Allocate
        | Release
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
