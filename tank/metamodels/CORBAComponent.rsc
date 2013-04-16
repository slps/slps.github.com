@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module CORBAComponent

extend lang::std::Whitespace;

layout Standard = Whitespace* !>> [\u0009-\u000D \u0020 \u0085 \u00A0 \u1680 \u180E \u2000-\u200A \u2028 \u2029 \u202F \u205F \u3000];
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
