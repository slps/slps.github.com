@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module Uml_uc

syntax Classifier
        = Actor
        | UseCase
        | Instance instance+
 ;
syntax Instance
        = UseCaseInstance
        | Classifier classifier+
 ;
syntax Actor
        = 
        ()
 ;
syntax UseCase
        = 
        String extensionPoint+ Include includeAddition Include includeBase Extend extendExtension Extend extendBase ExtensionPoint extensionPoints+
 ;
syntax UseCaseInstance
        = 
        ()
 ;
syntax RelationShip
        = Include
        | Extend
 ;
syntax Include
        = 
        UseCase addition UseCase base
 ;
syntax Extend
        = 
        BooleanExpression condition UseCase extension UseCase base ExtensionPoint extensionPoint+
 ;
syntax BooleanExpression
        = 
        value: String
 ;
syntax ModelElement
        = 
        ExtensionPoint
 ;
syntax ExtensionPoint
        = 
        LocationReference location Extend extend+ UseCase useCase+
 ;
syntax LocationReference
        = 
        value: String
 ;
