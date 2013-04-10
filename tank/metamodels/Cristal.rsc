@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module Cristal

syntax Condition
        = 
        PartCompositeMember partCompositeMembers+ ActCompositeMember actCompositeMembers+
 ;
syntax CompositeParDef
        = 
        PartCompositeMember partCompositeMember+
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
        ActCompositeMember actCompositeMembers+
 ;
syntax ActCompositeMember
        = 
        ActivityDefinition activityDefinitions+
 ;
syntax ActivityDefinition
        = ElementaryActDef
        | CompositeActDef
        | actCompositeMember: ActCompositeMember
 ;
syntax PartDefinition
        = CompositeParDef
        | ElementaryPartDef
        | PartCompositeMember partCompositeMembers+
 ;
syntax PartCompositeMember
        = 
        partDefinitions: PartDefinition
 ;
