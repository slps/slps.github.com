@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module Simple

extend lang::std::Whitespace;

layout Standard = Whitespace* !>> [\u0009-\u000D \u0020 \u0085 \u00A0 \u1680 \u180E \u2000-\u200A \u2028 \u2029 \u202F \u205F \u3000];
syntax UMLModelElement
        = Attribute
        | Package
        | PackageElement
 ;
syntax Attribute
        = 
        Class owner Classifier type
 ;
syntax Package
        = 
        PackageElement elements+
 ;
syntax PackageElement
        = Classifier
        | Association
 ;
syntax Classifier
        = Class
        | PrimitiveDataType
 ;
syntax Class
        = 
        Attribute attribute+ Class general+ Class generalOpposite+ Association reverse+ Association forward+
 ;
syntax PrimitiveDataType
        = 
        Attribute typeOpposite+
 ;
syntax Association
        = 
        Class source Class destination
 ;
syntax String
        = 
        String
 ;
