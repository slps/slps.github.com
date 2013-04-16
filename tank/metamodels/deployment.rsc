@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module Deployment

extend lang::std::Whitespace;

layout Standard = Whitespace* !>> [\u0009-\u000D \u0020 \u0085 \u00A0 \u1680 \u180E \u2000-\u200A \u2028 \u2029 \u202F \u205F \u3000];
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
