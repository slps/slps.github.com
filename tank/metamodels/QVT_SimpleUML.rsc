@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module QVT_SimpleUML

syntax UMLModelElement
        = 
        ()
 ;
syntax Attribute
        = 
        ANY owner ANY type
 ;
syntax Package
        = 
        ANY elements+
 ;
syntax PackageElement
        = 
        ()
 ;
syntax Classifier
        = 
        ()
 ;
syntax Class
        = 
        ANY attribute+ ANY general+ ANY generalOpposite+ ANY reverse+ ANY forward+
 ;
syntax PrimitiveDataType
        = 
        ANY typeOpposite+
 ;
syntax Association
        = 
        ANY source ANY destination
 ;
