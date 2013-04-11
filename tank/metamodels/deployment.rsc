@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module Deployment

syntax Node
        = Device
        | ExecutionEnvironment
 ;
syntax Device
        = 
        Node nestedNode+ String name
 ;
syntax ExecutionEnvironment
        = 
        Node nestedNode+ String name
 ;
syntax Specification
        = 
        Node ownedNode+ CommunicationLink ownedCommunicationLink+
 ;
syntax CommunicationLink
        = 
        Node source Node target String name
 ;
syntax String
        = 
        String
 ;
