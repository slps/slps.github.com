@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module JavaSource

syntax JavaSource
        = 
        ClassDeclaration classes+
 ;
syntax NamedElement
        = ClassDeclaration
        | MethodDefinition
 ;
syntax ClassDeclaration
        = 
        ClassDeclaration superclass MethodDefinition methods+
 ;
syntax MethodDefinition
        = 
        ClassDeclaration class MethodInvocation invocations+
 ;
syntax MethodInvocation
        = 
        method: MethodDefinition
 ;
