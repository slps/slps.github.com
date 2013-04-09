@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module BQL

syntax LocatedElement
        = 
        ()
 ;
syntax Query
        = 
        ANY entries+ ANY predicates+
 ;
syntax Entry
        = 
        ANY name ANY type ANY allFields ANY fields+ ANY predicate
 ;
syntax Field
        = 
        ANY name ANY entry
 ;
syntax Predicate
        = 
        ANY entry ANY expression+
 ;
syntax Expression
        = 
        ANY field ANY value
 ;
