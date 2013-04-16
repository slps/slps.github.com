@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module R2ML

extend lang::std::Whitespace;

layout Standard = Whitespace* !>> [\u0009-\u000D \u0020 \u0085 \u00A0 \u1680 \u180E \u2000-\u200A \u2028 \u2029 \u202F \u205F \u3000];
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
syntax Integer
        = 
        Integer
 ;
syntax Boolean
        = "true"
        | "false"
 ;
syntax String
        = 
        String
 ;
