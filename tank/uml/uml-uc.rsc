@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module Uml_uc

syntax Classifier
        = 
        ANY instance+
 ;
syntax Instance
        = 
        ANY classifier+
 ;
syntax Actor
        = 
        ()
 ;
syntax UseCase
        = 
        ANY extensionPoint+ ANY includeAddition ANY includeBase ANY extendExtension ANY extendBase ANY extensionPoints+
 ;
syntax UseCaseInstance
        = 
        ()
 ;
syntax RelationShip
        = 
        ()
 ;
syntax Include
        = 
        ANY addition ANY base
 ;
syntax Extend
        = 
        ANY condition ANY extension ANY base ANY extensionPoint+
 ;
syntax BooleanExpression
        = 
        value: ANY
 ;
syntax ModelElement
        = 
        ()
 ;
syntax ExtensionPoint
        = 
        ANY location ANY extend+ ANY useCase+
 ;
syntax LocationReference
        = 
        value: ANY
 ;
