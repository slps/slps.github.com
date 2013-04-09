@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module Deployment

syntax Node
        = 
        ()
 ;
syntax Device
        = 
        ANY nestedNode+ ANY name
 ;
syntax ExecutionEnvironment
        = 
        ANY nestedNode+ ANY name
 ;
syntax Specification
        = 
        ANY ownedNode+ ANY ownedCommunicationLink+
 ;
syntax CommunicationLink
        = 
        ANY source ANY target ANY name
 ;
