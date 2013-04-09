@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module IRL

syntax Element
        = 
        ANY location ANY commentsBefore+ ANY commentsAfter+
 ;
syntax NamedElement
        = 
        ()
 ;
syntax ExtendedIdentifier
        = 
        ANY parentIdentifier ANY extendedIdentifierOwner
 ;
syntax Extended
        = 
        ()
 ;
syntax Definition
        = 
        ()
 ;
syntax RuleSet
        = 
        ANY importDefinitions+ ANY propertyDefinitions ANY rulesetElementDefinitions+
 ;
syntax ImportDefinition
        = 
        ANY importDefinitionOwners ANY dotStar
 ;
