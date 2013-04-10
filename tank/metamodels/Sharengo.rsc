@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module Sharengo

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
