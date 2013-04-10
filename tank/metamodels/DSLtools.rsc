@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module DSLtools

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
