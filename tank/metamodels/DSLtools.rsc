@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module DSLtools

syntax NamedElement
        = 
        ()
 ;
syntax LoadedElement
        = 
        ()
 ;
syntax Namespace
        = 
        ()
 ;
syntax DomainModel
        = 
        ANY classifiers+ ANY types+
 ;
syntax Classifier
        = 
        ()
 ;
syntax Class
        = 
        isSerializationRoot: ANY
 ;
syntax Relationship
        = 
        ANY isEmbedding ANY roles
 ;
syntax Role
        = 
        ANY min ANY max ANY isUnbounded ANY accepts ANY isOrdered ANY isNavigableFrom ANY isPropertyGenerator ANY source ANY type ANY relation
 ;
syntax ValueProperty
        = 
        ANY owner ANY type
 ;
syntax Type
        = 
        ()
 ;
syntax SimpleType
        = 
        ()
 ;
syntax EnumerationLiteral
        = 
        value: ANY
 ;
syntax Enumeration
        = 
        ANY literals+
 ;
