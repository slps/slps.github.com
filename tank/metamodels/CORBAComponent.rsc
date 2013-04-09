@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module CORBAComponent

syntax InterfaceDef
        = 
        ()
 ;
syntax OperationDef
        = 
        ()
 ;
syntax ValueDef
        = 
        ()
 ;
syntax ComponentDef
        = 
        ANY isBasic ANY facets+ ANY receptacles+ ANY supports+ ANY emits+ ANY publishes+ ANY consumes+
 ;
syntax ProvidesDef
        = 
        ANY provides ANY prd_home
 ;
syntax UsesDef
        = 
        ANY multiple ANY uses ANY ud_home
 ;
syntax EventDef
        = 
        type: ANY
 ;
syntax EmitsDef
        = 
        ed_home: ANY
 ;
syntax PublishesDef
        = 
        pud_home: ANY
 ;
syntax ConsumesDef
        = 
        cd_home: ANY
 ;
syntax HomeDef
        = 
        ANY manages ANY factories+ ANY finders+ ANY key
 ;
syntax FactoryDef
        = 
        fa_home: ANY
 ;
syntax FinderDef
        = 
        fi_home: ANY
 ;
syntax PrimaryKeyDef
        = 
        ANY pkd_home ANY type
 ;
