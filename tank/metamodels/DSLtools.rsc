@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module DSLtools

extend lang::std::Whitespace;

layout Standard = Whitespace* !>> [\u0009-\u000D \u0020 \u0085 \u00A0 \u1680 \u180E \u2000-\u200A \u2028 \u2029 \u202F \u205F \u3000];
syntax NamedElement
        = Namespace
        | Role
        | ValueProperty
        | EnumerationLiteral
 ;
syntax LoadedElement
        = DomainModel
        | Classifier
 ;
syntax Namespace
        = LoadedElement
        | Type
 ;
syntax DomainModel
        = 
        Classifier classifiers+ Type types+
 ;
syntax Classifier
        = Class
        | Relationship
 ;
syntax Class
        = 
        isSerializationRoot: PrimitiveTypes/Boolean
 ;
syntax Relationship
        = 
        PrimitiveTypes/Boolean isEmbedding Role roles
 ;
syntax Role
        = 
        PrimitiveTypes/Integer min PrimitiveTypes/Integer max PrimitiveTypes/Boolean isUnbounded PrimitiveTypes/String accepts PrimitiveTypes/Boolean isOrdered PrimitiveTypes/Boolean isNavigableFrom PrimitiveTypes/Boolean isPropertyGenerator Classifier source Classifier type Relationship relation
 ;
syntax ValueProperty
        = 
        Classifier owner Type type
 ;
syntax Type
        = SimpleType
        | Enumeration
 ;
syntax SimpleType
        = 
        ()
 ;
syntax EnumerationLiteral
        = 
        value: PrimitiveTypes/Integer
 ;
syntax Enumeration
        = 
        EnumerationLiteral literals+
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
