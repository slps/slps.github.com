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
        Rules/ReactionRule rules+
 ;
syntax ProductionRuleSet
        = 
        Rules/ProductionRule rules+
 ;
syntax EventType
        = 
        eventTypeID: String
 ;
syntax RuleSet
        = ReactionRuleSet
        | ProductionRuleSet
        | IntegrityRuleSet
        | DerivationRuleSet
 ;
syntax RuleBase
        = 
        Vocabulary/VocBasic/Vocabulary vocabularies Vocabulary/VocBuiltin/ExternalVocabulary externalVocabulaires+ RuleSet rules+ String ruleBaseID
 ;
syntax IntegrityRuleSet
        = 
        Rules/IntegrityRule rules+
 ;
syntax DerivationRuleSet
        = 
        Rules/DerivationRule rules+
 ;
