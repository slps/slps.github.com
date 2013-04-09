@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module UnifiedOntologyLanguage

syntax Node
        = 
        ()
 ;
syntax Resource
        = 
        context: ANY
 ;
syntax Literal
        = 
        ()
 ;
syntax Fact
        = 
        ANY object ANY subject ANY predicate ANY context
 ;
syntax Package
        = 
        ()
 ;
syntax Ontology
        = 
        ANY imports+
 ;
