@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module R2ML

syntax CollectionTypes
        = individual: ()
        | set: ()
        | orderedSet: ()
        | bag: ()
        | sequence: ()
 ;
syntax PredicateCategory
        = closed: ()
        | open: ()
        | partial: ()
 ;
syntax ExternalVocabularyLanguage
        = RDFS: ()
        | UML: ()
        | OWL: ()
 ;
syntax PredicateType
        = ObjectClassificationPredicate: ()
        | AttributionPredicate: ()
        | AssociationPredicate: ()
        | ReferencePropertyPredicate: ()
        | EqualityPredicate: ()
        | InequalityPredicate: ()
        | DatatypePredicate: ()
        | DataClassificationPredicate: ()
 ;
syntax ReactionRuleSet
        = 
        ANY rules+
 ;
syntax ProductionRuleSet
        = 
        ANY rules+
 ;
syntax EventType
        = 
        eventTypeID: ANY
 ;
syntax RuleSet
        = 
        ()
 ;
syntax RuleBase
        = 
        ANY vocabularies ANY externalVocabulaires+ ANY rules+ ANY ruleBaseID
 ;
syntax IntegrityRuleSet
        = 
        ANY rules+
 ;
syntax DerivationRuleSet
        = 
        ANY rules+
 ;
