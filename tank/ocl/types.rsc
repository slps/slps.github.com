@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module Types

syntax Type
        = 
        ()
 ;
syntax BasicType
        = 
        ()
 ;
syntax InstanceType
        = 
        classifier: ANY
 ;
syntax EnumType
        = 
        ANY enumLiteral+
 ;
syntax OclAnyType
        = 
        ANY supertype+ ANY subtype+ ANY collectionType+
 ;
syntax OclTypeType
        = 
        ANY supertype+ ANY subtype+ ANY collectionType+
 ;
syntax CollectionType
        = 
        ()
 ;
syntax IntegerType
        = 
        
 ;
syntax RealType
        = 
        
 ;
syntax StringType
        = 
        
 ;
syntax BooleanType
        = 
        
 ;
syntax Classifier
        = 
        instanceType: ANY
 ;
syntax EnumLiteral
        = 
        enumType: ANY
 ;
syntax SetType
        = 
        ANY elementType
 ;
syntax SequenceType
        = 
        ANY elementType
 ;
syntax BagType
        = 
        ANY elementType
 ;
