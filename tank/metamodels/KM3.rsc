@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module KM3

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
syntax LocatedElement
        = ModelElement
        | Metamodel
 ;
syntax ModelElement
        = Classifier
        | EnumLiteral
        | StructuralFeature
        | Package
 ;
syntax Classifier
        = DataType
        | Enumeration
        | Class
 ;
syntax DataType
        = 
        ()
 ;
syntax Enumeration
        = 
        EnumLiteral literals+
 ;
syntax EnumLiteral
        = 
        String name Package package
 ;
syntax Class
        = 
        Boolean isAbstract Class supertypes+ StructuralFeature structuralFeatures+
 ;
syntax StructuralFeature
        = Attribute
        | Reference
        | Integer lower Integer upper Boolean isOrdered Boolean isUnique Class owner Classifier type
 ;
syntax Attribute
        = 
        Integer lower Integer upper Boolean isOrdered Boolean isUnique Class owner Classifier type
 ;
syntax Reference
        = 
        Boolean isContainer Reference opposite
 ;
syntax Package
        = 
        ModelElement contents+ Metamodel metamodel
 ;
syntax Metamodel
        = 
        Package contents+
 ;
