@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module IRL

syntax Element
        = NamedElement
        | Extended
        | Typed
        | RuleSetDeclaration
        | Binding
        | RuleCondition
        | RuleAction
        | String location String commentsBefore+ String commentsAfter+
 ;
syntax NamedElement
        = ExtendedIdentifier
        | RuleSet
        | Type
        | RulesetElementDefinition
 ;
syntax ExtendedIdentifier
        = 
        ExtendedIdentifier parentIdentifier Extended extendedIdentifierOwner
 ;
syntax Extended
        = Definition
        | ClassInstancesDeclaration
 ;
syntax Definition
        = ImportDefinition
        | PropertyDefinition
 ;
syntax RuleSet
        = 
        ImportDefinition importDefinitions+ IRLDeclarations/PropertyDefinition propertyDefinitions IRLRules/RulesetElementDefinition rulesetElementDefinitions+
 ;
syntax ImportDefinition
        = 
        RuleSet importDefinitionOwners Boolean dotStar
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
