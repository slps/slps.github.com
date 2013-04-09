@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module Java_20040316

syntax JavaElement
        = 
        ()
 ;
syntax ClassFeature
        = 
        ()
 ;
syntax ClassMember
        = 
        ()
 ;
syntax Field
        = 
        ANY owner ANY type ANY isStatic ANY isPublic
 ;
syntax JavaClass
        = 
        ANY members+ ANY package ANY typedElements+ ANY parameters+ ANY isAbstract ANY isStatic ANY isPublic
 ;
syntax Method
        = 
        ANY parameters+
 ;
syntax Package
        = 
        ANY classes+
 ;
syntax PrimitiveType
        = 
        ()
 ;
syntax FeatureParameter
        = 
        ANY type ANY method
 ;
