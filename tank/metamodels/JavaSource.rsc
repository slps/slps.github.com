@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module JavaSource

syntax JavaSource
        = 
        ANY classes+
 ;
syntax NamedElement
        = 
        ()
 ;
syntax ClassDeclaration
        = 
        ANY superclass ANY methods+
 ;
syntax MethodDefinition
        = 
        ANY class ANY invocations+
 ;
syntax MethodInvocation
        = 
        method: ANY
 ;
