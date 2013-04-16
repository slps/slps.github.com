@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module Types

extend lang::std::Whitespace;

layout Standard = Whitespace* !>> [\u0009-\u000D \u0020 \u0085 \u00A0 \u1680 \u180E \u2000-\u200A \u2028 \u2029 \u202F \u205F \u3000];
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
