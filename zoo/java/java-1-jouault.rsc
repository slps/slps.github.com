@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module Java_1_jouault

extend lang::std::Whitespace;

layout Standard = Whitespace* !>> [\u0009-\u000D \u0020 \u0085 \u00A0 \u1680 \u180E \u2000-\u200A \u2028 \u2029 \u202F \u205F \u3000];
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
