@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module Reuse

extend lang::std::Whitespace;

layout Standard = Whitespace* !>> [\u0009-\u000D \u0020 \u0085 \u00A0 \u1680 \u180E \u2000-\u200A \u2028 \u2029 \u202F \u205F \u3000];
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
syntax Boolean
        = "true"
        | "false"
 ;
syntax Integer
        = 
        Integer
 ;
syntax String
        = 
        String
 ;
