@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module EQN

extend lang::std::Whitespace;

layout Standard = Whitespace* !>> [\u0009-\u000D \u0020 \u0085 \u00A0 \u1680 \u180E \u2000-\u200A \u2028 \u2029 \u202F \u205F \u3000];
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
        Node node QueuingNetwork queuingNetwork
 ;
syntax PassiveCenter
        = 
        Node node QueuingNetwork queuingNetwork
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
