@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module Simple

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
