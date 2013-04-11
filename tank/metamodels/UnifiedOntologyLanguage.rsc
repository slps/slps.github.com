@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module UnifiedOntologyLanguage

syntax Integer
        = 
        Integer
 ;
syntax String
        = 
        String
 ;
syntax Boolean
        = "true"
        | "false"
 ;
syntax Node
        = Resource
        | Literal
 ;
syntax Resource
        = Package
        | context: Package
 ;
syntax Literal
        = 
        ()
 ;
syntax Fact
        = 
        Node object Resource subject Resource predicate Package context
 ;
syntax Package
        = 
        Ontology
 ;
syntax Ontology
        = 
        Package imports+
 ;
