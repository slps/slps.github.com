@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module Cristal

extend lang::std::Whitespace;

layout Standard = Whitespace* !>> [\u0009-\u000D \u0020 \u0085 \u00A0 \u1680 \u180E \u2000-\u200A \u2028 \u2029 \u202F \u205F \u3000];
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
        PartCompositeMember partCompositeMembers+
 ;
syntax ElementaryActDef
        = 
        actCompositeMember: ActCompositeMember
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
syntax String
        = 
        String
 ;
syntax Boolean
        = "true"
        | "false"
 ;
syntax Integer
        = 
        Integer
 ;
