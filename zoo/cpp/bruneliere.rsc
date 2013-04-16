@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module Bruneliere

extend lang::std::Whitespace;

layout Standard = Whitespace* !>> [\u0009-\u000D \u0020 \u0085 \u00A0 \u1680 \u180E \u2000-\u200A \u2028 \u2029 \u202F \u205F \u3000];
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
