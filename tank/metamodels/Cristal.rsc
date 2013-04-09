@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module Cristal

syntax Condition
        = 
        ANY partCompositeMembers+ ANY actCompositeMembers+
 ;
syntax CompositeParDef
        = 
        ANY partCompositeMember+
 ;
syntax ElementaryPartDef
        = 
        ()
 ;
syntax ElementaryActDef
        = 
        ()
 ;
syntax CompositeActDef
        = 
        ANY actCompositeMembers+
 ;
syntax ActCompositeMember
        = 
        ANY activityDefinitions+
 ;
syntax ActivityDefinition
        = 
        actCompositeMember: ANY
 ;
syntax PartDefinition
        = 
        ANY partCompositeMembers+
 ;
syntax PartCompositeMember
        = 
        partDefinitions: ANY
 ;
