@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module CSharp

syntax Member
        = 
        ANY name ANY owner
 ;
syntax TypedAttribute
        = 
        type: ANY
 ;
syntax Field
        = 
        ()
 ;
syntax Property
        = 
        ANY isReadable ANY isWritable
 ;
syntax MethodBase
        = 
        ANY visibility ANY isAbstract ANY isFinal ANY isStatic ANY parameters+
 ;
syntax Constructor
        = 
        ()
 ;
syntax Method
        = 
        returnType: ANY
 ;
syntax Type
        = 
        ANY qualifiedName ANY isAbstract ANY visibility ANY isSealed ANY nameSpace ANY members+ ANY t_container ANY super
 ;
syntax Parameter
        = 
        ANY isIn ANY isOut ANY name ANY position ANY method ANY type
 ;
syntax Assembly
        = 
        ANY name ANY content+
 ;
