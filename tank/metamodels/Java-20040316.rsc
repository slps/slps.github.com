@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module Java_20040316

syntax JavaElement
        = ClassFeature
        | Package
 ;
syntax ClassFeature
        = ClassMember
        | JavaClass
        | FeatureParameter
 ;
syntax ClassMember
        = Field
        | Method
 ;
syntax Field
        = 
        JavaClass owner JavaClass type Boolean isStatic Boolean isPublic
 ;
syntax JavaClass
        = PrimitiveType
        | ClassMember members+ Package package ClassMember typedElements+ FeatureParameter parameters+ Boolean isAbstract Boolean isStatic Boolean isPublic
 ;
syntax Method
        = 
        FeatureParameter parameters+
 ;
syntax Package
        = 
        JavaClass classes+
 ;
syntax PrimitiveType
        = 
        ()
 ;
syntax FeatureParameter
        = 
        JavaClass type Method method
 ;
