@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module Sharengo

extend lang::std::Whitespace;

layout Standard = Whitespace* !>> [\u0009-\u000D \u0020 \u0085 \u00A0 \u1680 \u180E \u2000-\u200A \u2028 \u2029 \u202F \u205F \u3000];
syntax ModelElement
        = Classifier
        | Operation
        | BusinessRule
        | Flow
 ;
syntax Classifier
        = Service
        | BusinessObject
 ;
syntax Operation
        = ServiceOperation
        | BusinessObjectOperation
 ;
syntax Service
        = 
        ServiceOperation operations+
 ;
syntax BusinessObject
        = 
        BusinessObjectOperation operations+
 ;
syntax ServiceOperation
        = 
        Service2BusinessObjectFlow BOFlows+ BusinessRule rules+
 ;
syntax BusinessObjectOperation
        = 
        BusinessRule rules+
 ;
syntax BusinessRule
        = 
        expr: String
 ;
syntax Flow
        = 
        Service2BusinessObjectFlow
 ;
syntax Service2BusinessObjectFlow
        = 
        String source String target
 ;
syntax String
        = 
        String
 ;
