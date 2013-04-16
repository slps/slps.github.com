@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module IRL

extend lang::std::Whitespace;

layout Standard = Whitespace* !>> [\u0009-\u000D \u0020 \u0085 \u00A0 \u1680 \u180E \u2000-\u200A \u2028 \u2029 \u202F \u205F \u3000];
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
