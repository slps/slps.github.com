@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module SBVRvoc

syntax LocatedElement
        = Root
        | VocabularyEntry
        | Caption
        | PrimaryRepresentation
        | ConceptDefinition
        | ConceptSource
        | Note
        | Sentence
        | NameSpaceURI
        | Word
        | SBVRExpression
        | SBVRPropWithKW
        | ModalForm
        | SimpleSBVRProp
        | SubSBVRProp
        | LinkSBVRConcept
        | ConjConcept
        | Concept
        | NounConcept
        | Qualification
        | GeneralConcept
        | Qualifier
        | ModalBegin
 ;
syntax Root
        = 
        VocabularyEntry entries+
 ;
syntax VocabularyEntry
        = 
        PrimaryRepresentation primaryRep Caption caption+
 ;
syntax Caption
        = DefCaption
        | DescCaption
        | SrcCaption
        | DBCaption
        | GenCCaption
        | CTypCaption
        | Necessity
        | Possibility
        | RefSCaption
        | NoteCaption
        | ExCaption
        | SynCaption
        | SynFCaption
        | SeeCaption
        | SFCaption
        | NSURICaption
 ;
syntax DefCaption
        = 
        definition: ConceptDefinition
 ;
syntax DescCaption
        = 
        description: Note
 ;
syntax SrcCaption
        = 
        source: ConceptSource
 ;
syntax DBCaption
        = 
        dictionaryBasis: ConceptSource
 ;
syntax GenCCaption
        = 
        generalConcept: PrimaryRepresentation
 ;
syntax CTypCaption
        = 
        PrimaryRepresentation conceptType+
 ;
syntax Necessity
        = 
        exp: SBVRExpression
 ;
syntax Possibility
        = 
        exp: SBVRExpression
 ;
syntax RefSCaption
        = 
        referenceScheme: PrimaryRepresentation
 ;
syntax NoteCaption
        = 
        note: Note
 ;
syntax ExCaption
        = 
        SBVRExpression example+
 ;
syntax SynCaption
        = 
        PrimaryRepresentation synonym+
 ;
syntax SynFCaption
        = 
        SBVRExpression synonymousForm+
 ;
syntax SeeCaption
        = 
        see: PrimaryRepresentation
 ;
syntax SFCaption
        = 
        subjectField: PrimaryRepresentation
 ;
syntax NSURICaption
        = 
        namespaceURI: NameSpaceURI
 ;
syntax PrimaryRepresentation
        = NotFactTypeRepresentation
        | FactTypeFormRepresentation
 ;
syntax NotFactTypeRepresentation
        = TermRepresentation
        | NameRepresentation
 ;
syntax TermRepresentation
        = 
        StringWord term+
 ;
syntax NameRepresentation
        = 
        Boolean hasThe NameWord name+
 ;
syntax FactTypeFormRepresentation
        = 
        NotFactTypeRepresentation primaryRep1 Verb verbExp+ NotFactTypeRepresentation primaryRep2
 ;
syntax ConceptDefinition
        = 
        Concept exp ConjConcept conjexp+
 ;
syntax ConceptSource
        = 
        Word source+
 ;
syntax Note
        = 
        Sentence sentences+
 ;
syntax Sentence
        = 
        Word words+
 ;
syntax NameSpaceURI
        = 
        Word URI+
 ;
syntax Word
        = StringWord
        | QuotedStringWord
        | NameWord
 ;
syntax StringWord
        = 
        val: String
 ;
syntax QuotedStringWord
        = 
        val: String
 ;
syntax NameWord
        = 
        val: String
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
        Boolean hasPoint SimpleSBVRProp firstProposition SBVRPropWithKW nextProposition+
 ;
syntax SBVRPropWithKW
        = 
        ConjonctionnalKeyWord conjonction EndOperator endConj SimpleSBVRProp proposition
 ;
syntax ModalForm
        = 
        ModalVerb modal Boolean isNeg
 ;
syntax SimpleSBVRProp
        = 
        ModalBegin modal Concept concept1 ModalForm modalVerb Verb verbs+ Concept concept2
 ;
syntax SubSBVRProp
        = 
        Join join ModalVerb modalVerb Verb verbs+ Concept concept2
 ;
syntax LinkSBVRConcept
        = 
        Link link Concept concept
 ;
syntax ConjConcept
        = 
        ConjonctionnalKeyWord conjonction Concept concept
 ;
syntax Concept
        = NameConcept
        | ObjectConcept
        | StringConcept
 ;
syntax NameConcept
        = 
        Qualif the NameWord name+
 ;
syntax ObjectConcept
        = 
        NounConcept operatoredConcept Qualification qualify
 ;
syntax StringConcept
        = 
        QuotedStringWord stringWord+
 ;
syntax NounConcept
        = 
        Qualifier qualif StringWord noun+
 ;
syntax Qualification
        = 
        GeneralConcept generalConcept+
 ;
syntax GeneralConcept
        = NameGConcept
        | NounGConcept
 ;
syntax NameGConcept
        = 
        name: NameConcept
 ;
syntax NounGConcept
        = 
        StringWord noun+
 ;
syntax Qualifier
        = 
        Qualif op EndOperator endOperator StringWord min StringWord max
 ;
syntax ModalBegin
        = ModalBeginC
        | endOperator: EndOperator
 ;
syntax ModalBeginC
        = 
        endOperator: EndOperator
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
