@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module CPP

syntax Integer
        = 
        Integer
 ;
syntax String
        = 
        String
 ;
syntax Boolean
        = "true"
        | "false"
 ;
syntax CDerived
        = CPPReference
        | CPPExtern
        | CPPConst
        | CPPTemplate
 ;
syntax CStructured
        = 
        CPPClass
 ;
syntax CBehavorialFeature
        = 
        CFunction
 ;
syntax CFunction
        = CPPOperation
        | isVsrArg: Boolean
 ;
syntax CStructureContents
        = CPPOperator
        | CPPOperation
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
        linkage: String
 ;
syntax CPPConst
        = 
        ()
 ;
syntax CPPTemplate
        = 
        CPPClass classes+
 ;
syntax CPPClass
        = 
        Boolean isAbstract Boolean isVolatile VisibilityKind visibility CPPTemplate templates+ CPPGeneralization generalizations+
 ;
syntax CPPGeneralization
        = 
        VisibilityKind visibility Boolean isVirtual CPPClass supertype
 ;
syntax CPPOperation
        = 
        Boolean isStatic Boolean isExtern Boolean isInline Boolean isVirtual Boolean isPure VisibilityKind visibility Boolean isCtor Boolean isDtor CPPClass throws+
 ;
syntax CPPOperator
        = 
        Boolean isInline VisibilityKind visibility
 ;
syntax CPPMember
        = 
        Boolean isStatic Boolean isVolatile Boolean isRegister VisibilityKind visibility
 ;
