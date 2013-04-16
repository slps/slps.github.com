@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module MoMM

extend lang::std::Whitespace;

layout Standard = Whitespace* !>> [\u0009-\u000D \u0020 \u0085 \u00A0 \u1680 \u180E \u2000-\u200A \u2028 \u2029 \u202F \u205F \u3000];
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
syntax ModelElement
        = Attribute
        | Relationship
        | Integer level String name String potency ModelElement hasClass ModelElement classElement+ Relationship elementTarget Relationship elementSource Attribute attributes+ Attribute attType
 ;
syntax Attribute
        = 
        type: ModelElement
 ;
syntax Relationship
        = Generalization
        | Association
 ;
syntax Generalization
        = 
        ModelElement target ModelElement source
 ;
syntax Association
        = 
        String maxSource String maxTarget String minSource String minTarget
 ;
