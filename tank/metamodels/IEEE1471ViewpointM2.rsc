@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module IEEE1471ViewpointM2

syntax Viewpoint
        = 
        ANY source+ ANY covers+ ANY supplierDependency+ ANY clientDependency+ ANY isImportTo ANY architecturalConstruct+ ANY process
 ;
syntax Concern
        = 
        ()
 ;
syntax Stakeholder
        = 
        concerns: ANY
 ;
syntax ViewpointImport
        = 
        ()
 ;
syntax ViewpointDependency
        = 
        ANY supplier ANY client
 ;
syntax Process
        = 
        ANY methodology+
 ;
syntax Technique
        = 
        ANY methods+ ANY applies+
 ;
syntax AnalysisMethod
        = 
        analysis: ANY
 ;
syntax ArchitecturalConstruct
        = 
        ()
 ;
syntax Rule
        = 
        ANY techniques+ ANY guidance
 ;
syntax ModelOrganization
        = 
        ()
 ;
syntax ModellingRule
        = 
        ()
 ;
syntax Language
        = 
        ()
 ;
syntax Mapping
        = 
        ANY input ANY ouput
 ;
syntax Pattern
        = 
        ()
 ;
