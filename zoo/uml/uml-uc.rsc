@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module Uml_uc

extend lang::std::Whitespace;

layout Standard = Whitespace* !>> [\u0009-\u000D \u0020 \u0085 \u00A0 \u1680 \u180E \u2000-\u200A \u2028 \u2029 \u202F \u205F \u3000];
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
        Instance instance+
 ;
syntax UseCase
        = 
        String extensionPoint+ Include includeAddition Include includeBase Extend extendExtension Extend extendBase ExtensionPoint extensionPoints+
 ;
syntax UseCaseInstance
        = 
        Classifier classifier+
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
syntax Boolean
        = "true"
        | "false"
 ;
syntax Integer
        = 
        Integer
 ;
syntax String
        = 
        String
 ;
