@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module CPP

syntax CDerived
        = 
        ()
 ;
syntax CStructured
        = 
        ()
 ;
syntax CBehavorialFeature
        = 
        ()
 ;
syntax CFunction
        = 
        isVsrArg: ANY
 ;
syntax CStructureContents
        = 
        ()
 ;
syntax CField
        = 
        ()
 ;
syntax CDerivableType
        = 
        ()
 ;
syntax VisibilityKind
        = vk_public: ()
        | vk_private: ()
        | vk_protected: ()
 ;
syntax CPPReference
        = 
        ()
 ;
syntax CPPExtern
        = 
        linkage: ANY
 ;
syntax CPPConst
        = 
        ()
 ;
syntax CPPTemplate
        = 
        ANY classes+
 ;
syntax CPPClass
        = 
        ANY isAbstract ANY isVolatile ANY visibility ANY templates+ ANY generalizations+
 ;
syntax CPPGeneralization
        = 
        ANY visibility ANY isVirtual ANY supertype
 ;
syntax CPPOperation
        = 
        ANY isStatic ANY isExtern ANY isInline ANY isVirtual ANY isPure ANY visibility ANY isCtor ANY isDtor ANY throws+
 ;
syntax CPPOperator
        = 
        ANY isInline ANY visibility
 ;
syntax CPPMember
        = 
        ANY isStatic ANY isVolatile ANY isRegister ANY visibility
 ;
