@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module Csharp_bruneliere

syntax Member
        = TypedAttribute
        | MethodBase
        | Type
        | String name Type owner
 ;
syntax TypedAttribute
        = Field
        | Property
        | type: Type
 ;
syntax Field
        = 
        type: Type
 ;
syntax Property
        = 
        Boolean isReadable Boolean isWritable
 ;
syntax MethodBase
        = Constructor
        | Method
        | String visibility Boolean isAbstract Boolean isFinal Boolean isStatic Parameter parameters+
 ;
syntax Constructor
        = 
        String visibility Boolean isAbstract Boolean isFinal Boolean isStatic Parameter parameters+
 ;
syntax Method
        = 
        returnType: Type
 ;
syntax Type
        = 
        String qualifiedName Boolean isAbstract String visibility Boolean isSealed String nameSpace Member members+ Assembly t_container Type super
 ;
syntax Parameter
        = 
        Boolean isIn Boolean isOut Boolean name Integer position MethodBase method Type type
 ;
syntax Assembly
        = 
        String name Type content+
 ;
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
