@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module Reuse

syntax ReuseContract
        = 
        ProviderClause supplier ReuserClause client
 ;
syntax Dependency
        = ReuseContract
        | Dependency owningDependency Dependency subDependency+
 ;
syntax ProviderClause
        = CompositeProvider
        | BasicProvider
 ;
syntax Package
        = ProviderClause
        | ReuserClause
 ;
syntax ReuserClause
        = CompositeReuser
        | BasicReuser
 ;
syntax CompositeProvider
        = 
        subcontract: ReuseContract
 ;
syntax BasicProvider
        = 
        ()
 ;
syntax CompositeReuser
        = 
        ReuserClause subreuser+
 ;
syntax BasicReuser
        = 
        ()
 ;
