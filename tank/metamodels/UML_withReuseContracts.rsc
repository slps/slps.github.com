@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module UML_withReuseContracts

syntax ReuseContract
        = 
        ANY supplier ANY client
 ;
syntax Dependency
        = 
        ANY owningDependency ANY subDependency+
 ;
syntax ProviderClause
        = 
        ()
 ;
syntax Package
        = 
        ()
 ;
syntax ReuserClause
        = 
        ()
 ;
syntax CompositeProvider
        = 
        subcontract: ANY
 ;
syntax BasicProvider
        = 
        ()
 ;
syntax CompositeReuser
        = 
        ANY subreuser+
 ;
syntax BasicReuser
        = 
        ()
 ;
