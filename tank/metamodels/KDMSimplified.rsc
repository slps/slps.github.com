@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module KDMSimplified

extend lang::std::Whitespace;

layout Standard = Whitespace* !>> [\u0009-\u000D \u0020 \u0085 \u00A0 \u1680 \u180E \u2000-\u200A \u2028 \u2029 \u202F \u205F \u3000];
syntax Element
        = ModelElement
        | Annotation
        | Attribute
        | KDMExtensionFamily
        | Stereotype
        | TagDefinition
        | TaggedValue
        | KDMFramework
 ;
syntax ModelElement
        = KDMEntity
        | KDMRelationship
 ;
syntax KDMEntity
        = KDMContainer
        | KDMGroup
 ;
syntax Annotation
        = 
        note: String
 ;
syntax Attribute
        = 
        String tag String value
 ;
syntax KDMExtensionFamily
        = 
        String name Stereotype stereotype+
 ;
syntax Stereotype
        = 
        String baseClass String name KDMExtensionFamily family ModelElement extendedElement TagDefinition tag+
 ;
syntax TagDefinition
        = 
        String tag String type
 ;
syntax TaggedValue
        = 
        String value TagDefinition tag
 ;
syntax KDMFramework
        = 
        KDMModel
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
