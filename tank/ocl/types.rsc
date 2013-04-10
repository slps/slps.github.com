@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module Types

syntax Type
        = BasicType
        | InstanceType
        | EnumType
        | OclAnyType
        | OclTypeType
        | CollectionType
 ;
syntax BasicType
        = IntegerType
        | RealType
        | StringType
        | BooleanType
 ;
syntax InstanceType
        = 
        classifier: Classifier
 ;
syntax EnumType
        = 
        EnumLiteral enumLiteral+
 ;
syntax OclAnyType
        = 
        Type supertype+ Type subtype+ CollectionType collectionType+
 ;
syntax OclTypeType
        = 
        Type supertype+ Type subtype+ CollectionType collectionType+
 ;
syntax CollectionType
        = SetType
        | SequenceType
        | BagType
 ;
syntax IntegerType
        = 
        ()
 ;
syntax RealType
        = 
        ()
 ;
syntax StringType
        = 
        ()
 ;
syntax BooleanType
        = 
        ()
 ;
syntax Classifier
        = 
        instanceType: InstanceType
 ;
syntax EnumLiteral
        = 
        enumType: EnumType
 ;
syntax SetType
        = 
        elementType: Type
 ;
syntax SequenceType
        = 
        elementType: Type
 ;
syntax BagType
        = 
        elementType: Type
 ;
