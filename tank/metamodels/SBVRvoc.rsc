@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module SBVRvoc

syntax LocatedElement
        = 
        ()
 ;
syntax Root
        = 
        ANY entries+
 ;
syntax VocabularyEntry
        = 
        ANY primaryRep ANY caption+
 ;
syntax Caption
        = 
        ()
 ;
syntax DefCaption
        = 
        definition: ANY
 ;
syntax DescCaption
        = 
        description: ANY
 ;
syntax SrcCaption
        = 
        source: ANY
 ;
syntax DBCaption
        = 
        dictionaryBasis: ANY
 ;
syntax GenCCaption
        = 
        generalConcept: ANY
 ;
syntax CTypCaption
        = 
        ANY conceptType+
 ;
syntax Necessity
        = 
        exp: ANY
 ;
syntax Possibility
        = 
        exp: ANY
 ;
syntax RefSCaption
        = 
        referenceScheme: ANY
 ;
syntax NoteCaption
        = 
        note: ANY
 ;
syntax ExCaption
        = 
        ANY example+
 ;
syntax SynCaption
        = 
        ANY synonym+
 ;
syntax SynFCaption
        = 
        ANY synonymousForm+
 ;
syntax SeeCaption
        = 
        see: ANY
 ;
syntax SFCaption
        = 
        subjectField: ANY
 ;
syntax NSURICaption
        = 
        namespaceURI: ANY
 ;
syntax PrimaryRepresentation
        = 
        ()
 ;
syntax NotFactTypeRepresentation
        = 
        ()
 ;
syntax TermRepresentation
        = 
        ANY term+
 ;
syntax NameRepresentation
        = 
        ANY hasThe ANY name+
 ;
syntax FactTypeFormRepresentation
        = 
        ANY primaryRep1 ANY verbExp+ ANY primaryRep2
 ;
syntax ConceptDefinition
        = 
        ANY exp ANY conjexp+
 ;
syntax ConceptSource
        = 
        ANY source+
 ;
syntax Note
        = 
        ANY sentences+
 ;
syntax Sentence
        = 
        ANY words+
 ;
syntax NameSpaceURI
        = 
        ANY URI+
 ;
syntax Word
        = 
        ()
 ;
syntax StringWord
        = 
        ANY val
 ;
syntax QuotedStringWord
        = 
        ANY val
 ;
syntax NameWord
        = 
        ANY val
 ;
syntax Verb
        = is: ()
        | relevant: ()
        | comprises: ()
        | to: ()
        | work: ()
        | in: ()
        | trades: ()
        | as: ()
        | are: ()
        | accepted: ()
        | generally: ()
        | important: ()
        | across: ()
        | share: ()
        | sets: ()
        | assigned: ()
        | by: ()
        | contains: ()
        | for: ()
        | has: ()
        | specifies: ()
        | specified: ()
 ;
syntax ConjonctionnalKeyWord
        = and: ()
        | or: ()
        | if: ()
        | whether: ()
 ;
syntax ModalVerb
        = must: ()
        | may: ()
        | never: ()
        | always: ()
 ;
syntax Join
        = that: ()
        | who: ()
 ;
syntax Link
        = of: ()
        | quoteS: ()
 ;
syntax Qualif
        = the: ()
        | The: ()
        | a: ()
        | A: ()
        | an: ()
        | An: ()
        | Each: ()
        | each: ()
        | Some: ()
        | some: ()
        | At: ()
        | at: ()
        | Exactly: ()
        | exactly: ()
 ;
syntax EndOperator
        = given: ()
        | thanone: ()
        | one: ()
        | isobligatorythat: ()
        | ispermittedthat: ()
        | isprohibitedthat: ()
        | isnecessarythat: ()
        | ispossiblethat: ()
        | isimpossiblethat: ()
        | isnotthecasethat: ()
        | least: ()
        | leastone: ()
        | most: ()
        | mostone: ()
        | leastnandatmostm: ()
        | andonlyif: ()
        | ornot: ()
        | not: ()
        | of: ()
 ;
syntax SBVRExpression
        = 
        ANY hasPoint ANY firstProposition ANY nextProposition+
 ;
syntax SBVRPropWithKW
        = 
        ANY conjonction ANY endConj ANY proposition
 ;
syntax ModalForm
        = 
        ANY modal ANY isNeg
 ;
syntax SimpleSBVRProp
        = 
        ANY modal ANY concept1 ANY modalVerb ANY verbs+ ANY concept2
 ;
syntax SubSBVRProp
        = 
        ANY join ANY modalVerb ANY verbs+ ANY concept2
 ;
syntax LinkSBVRConcept
        = 
        ANY link ANY concept
 ;
syntax ConjConcept
        = 
        ANY conjonction ANY concept
 ;
syntax Concept
        = 
        ()
 ;
syntax NameConcept
        = 
        ANY the ANY name+
 ;
syntax ObjectConcept
        = 
        ANY operatoredConcept ANY qualify
 ;
syntax StringConcept
        = 
        ANY stringWord+
 ;
syntax NounConcept
        = 
        ANY qualif ANY noun+
 ;
syntax Qualification
        = 
        ANY generalConcept+
 ;
syntax GeneralConcept
        = 
        ()
 ;
syntax NameGConcept
        = 
        name: ANY
 ;
syntax NounGConcept
        = 
        ANY noun+
 ;
syntax Qualifier
        = 
        ANY op ANY endOperator ANY min ANY max
 ;
syntax ModalBegin
        = 
        endOperator: ANY
 ;
syntax ModalBeginC
        = 
        ()
 ;
