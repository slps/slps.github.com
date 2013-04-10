@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module CORBAComponent

syntax InterfaceDef
        = ComponentDef
        | HomeDef
 ;
syntax OperationDef
        = FactoryDef
        | FinderDef
 ;
syntax ValueDef
        = 
        ()
 ;
syntax ComponentDef
        = 
        Boolean isBasic ProvidesDef facets+ UsesDef receptacles+ InterfaceDef supports+ EmitsDef emits+ PublishesDef publishes+ ConsumesDef consumes+
 ;
syntax ProvidesDef
        = 
        InterfaceDef provides ComponentDef prd_home
 ;
syntax UsesDef
        = 
        Boolean multiple InterfaceDef uses ComponentDef ud_home
 ;
syntax EventDef
        = EmitsDef
        | PublishesDef
        | ConsumesDef
        | type: ValueDef
 ;
syntax EmitsDef
        = 
        ed_home: ComponentDef
 ;
syntax PublishesDef
        = 
        pud_home: ComponentDef
 ;
syntax ConsumesDef
        = 
        cd_home: ComponentDef
 ;
syntax HomeDef
        = 
        ComponentDef manages FactoryDef factories+ FinderDef finders+ PrimaryKeyDef key
 ;
syntax FactoryDef
        = 
        fa_home: HomeDef
 ;
syntax FinderDef
        = 
        fi_home: HomeDef
 ;
syntax PrimaryKeyDef
        = 
        HomeDef pkd_home ValueDef type
 ;
