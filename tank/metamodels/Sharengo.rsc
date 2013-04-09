@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module Sharengo

syntax ModelElement
        = 
        ()
 ;
syntax Classifier
        = 
        ()
 ;
syntax Operation
        = 
        ANY name
 ;
syntax Service
        = 
        ANY operations+
 ;
syntax BusinessObject
        = 
        ANY operations+
 ;
syntax ServiceOperation
        = 
        ANY BOFlows+ ANY rules+
 ;
syntax BusinessObjectOperation
        = 
        ANY rules+
 ;
syntax BusinessRule
        = 
        expr: ANY
 ;
syntax Flow
        = 
        ()
 ;
syntax Service2BusinessObjectFlow
        = 
        ANY source ANY target
 ;
