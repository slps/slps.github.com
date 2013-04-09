@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module KM3

syntax LocatedElement
        = 
        ()
 ;
syntax ModelElement
        = 
        ()
 ;
syntax Classifier
        = 
        ANY name ANY package
 ;
syntax DataType
        = 
        ()
 ;
syntax Enumeration
        = 
        ANY literals+
 ;
syntax EnumLiteral
        = 
        ANY name ANY package
 ;
syntax Class
        = 
        ANY isAbstract ANY supertypes+ ANY structuralFeatures+
 ;
syntax StructuralFeature
        = 
        ANY lower ANY upper ANY isOrdered ANY isUnique ANY owner ANY type
 ;
syntax Attribute
        = 
        ()
 ;
syntax Reference
        = 
        ANY isContainer ANY opposite
 ;
syntax Package
        = 
        ANY contents+ ANY metamodel
 ;
syntax Metamodel
        = 
        ANY contents+
 ;
