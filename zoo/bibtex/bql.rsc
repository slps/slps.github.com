@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module Bql

syntax LocatedElement
        = 
        Entry
 ;
syntax Query
        = 
        Entry entries+ Predicate predicates+
 ;
syntax Entry
        = 
        String name String type Boolean allFields Field fields+ Predicate predicate
 ;
syntax Field
        = 
        String name Entry entry
 ;
syntax Predicate
        = 
        Entry entry Expression expression+
 ;
syntax Expression
        = 
        String field String value
 ;
