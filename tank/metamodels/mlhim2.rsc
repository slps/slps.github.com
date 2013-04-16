@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module Mlhim2

extend lang::std::Whitespace;

layout Standard = Whitespace* !>> [\u0009-\u000D \u0020 \u0085 \u00A0 \u1680 \u180E \u2000-\u200A \u2028 \u2029 \u202F \u205F \u3000];
syntax Action
        = 
        DvTemporal time ItemStructure description DvCodedString ismTransition DvCodedString instructionDetails
 ;
syntax Activity
        = 
        ItemStructure description DvParsable timing DvToken actions+
 ;
syntax AdminEntry
        = 
        data: ItemStructure
 ;
syntax ASKR
        = 
        ()
 ;
syntax ASKU
        = 
        NAV
 ;
syntax Attestation
        = 
        DvMedia attestedView DvParsable proof DvCodedString reason PartyProxy commiter DvTemporal timeCommited DvBoolean isPending
 ;
syntax CareEntry
        = Action
        | Evaluation
        | Instruction
        | Observation
 ;
syntax CCD
        = 
        Locatable definition MetaDataSet metaData+ Ontology ontology
 ;
syntax Cluster
        = 
        Item items+
 ;
syntax Composition
        = 
        Attestation attestation Link links+ DvToken original DvToken predecessor DvTemporal created PartyProxy composer Location territory DvCodedString category DvLanguage language EventContext context Locatable content
 ;
syntax ContentItem
        = Entry
        | Section
 ;
syntax DataStructure
        = History
        | ItemStructure
 ;
syntax DER
        = 
        ()
 ;
syntax Device
        = 
        details: ItemStructure
 ;
syntax DvAny
        = DvBoolean
        | DvChar
        | DvEncapsulated
        | DvInterval
        | DvNumeric
        | DvOrdered
        | DvParagraph
        | DvURI
        | PartyProxy
        | ReferenceRange
 ;
syntax DvBoolean
        = 
        dv: ANY
 ;
syntax DvByte
        = 
        dv: ANY
 ;
syntax DvChar
        = DvLanguage
        | DvNormalizedString
        | DvString
        | DvToken
 ;
syntax DvCodedString
        = 
        ANY codeString ANY terminologyName ANY terminologyAbbrev
 ;
syntax DvCount
        = 
        count: ANY
 ;
syntax DvDate
        = 
        dv: ANY
 ;
syntax DvDateTime
        = 
        dv: ANY
 ;
syntax DvDecimal
        = 
        dv: ANY
 ;
syntax DvDuration
        = 
        dv: ANY
 ;
syntax DvEncapsulated
        = DvMedia
        | DvParsable
 ;
syntax DvIdentifier
        = 
        ANY issuer ANY assigner ANY name
 ;
syntax DvInt
        = 
        dv: Integer
 ;
syntax DvInteger
        = 
        dv: ANY
 ;
syntax DvInterval
        = 
        DvOrdered lower DvOrdered upper ANY lowerIncluded ANY upperIncluded ANY lowerUnbounded ANY upperUnbounded
 ;
syntax DvLanguage
        = 
        dv: ANY
 ;
syntax DvLong
        = 
        dv: ANY
 ;
syntax DvMedia
        = DvMediaApp
        | DvMediaAudio
        | DvMediaImage
        | DvMediaModel
        | DvMediaMsg
        | DvMediaMultipart
        | DvMediaText
        | DvMediaVideo
 ;
syntax DvMediaApp
        = 
        dv: ANY
 ;
syntax DvMediaAudio
        = 
        dv: ANY
 ;
syntax DvMediaImage
        = 
        dv: ANY
 ;
syntax DvMediaModel
        = 
        dv: ANY
 ;
syntax DvMediaMsg
        = 
        dv: ANY
 ;
syntax DvMediaMultipart
        = 
        dv: ANY
 ;
syntax DvMediaText
        = 
        dv: String
 ;
syntax DvMediaVideo
        = 
        dv: ANY
 ;
syntax DvNegativeInteger
        = 
        dv: ANY
 ;
syntax DvNonNegativeInteger
        = 
        dv: ANY
 ;
syntax DvNonPositiveInteger
        = 
        dv: ANY
 ;
syntax DvNormalizedString
        = 
        ANY uuid ANY language ANY dv
 ;
syntax DvNumeric
        = DvByte
        | DvDecimal
        | DvInt
        | DvInteger
        | DvLong
        | DvNegativeInteger
        | DvNonNegativeInteger
        | DvNonPositiveInteger
        | DvPositiveInteger
        | DvShort
        | DvUnsignedByte
        | DvUnsignedInt
        | DvUnsignedLong
        | DvUnsignedShort
 ;
syntax DvOrdered
        = DvOrdinal
        | DvQuantified
 ;
syntax DvOrdinal
        = 
        ANY dv String symbol
 ;
syntax DvParagraph
        = 
        DvString items+
 ;
syntax DvParsable
        = 
        ANY dv ANY formalism
 ;
syntax DvPositiveInteger
        = 
        dv: ANY
 ;
syntax DvProportion
        = 
        proportionType: ANY
 ;
syntax DvQuantified
        = DvCount
        | DvQuantity
        | DvRatio
 ;
syntax DvQuantity
        = 
        units: ANY
 ;
syntax DvRate
        = 
        rateType: ANY
 ;
syntax DvRatio
        = DvProportion
        | DvRate
 ;
syntax DvShort
        = 
        dv: ANY
 ;
syntax DvString
        = DvCodedString
        | DvIdentifier
        | ANY uuid ANY language String dv
 ;
syntax DvTemporal
        = DvDate
        | DvDateTime
        | DvDuration
        | DvTime
 ;
syntax DvTime
        = 
        dv: ANY
 ;
syntax DvToken
        = 
        dv: ANY
 ;
syntax DvUnsignedByte
        = 
        dv: ANY
 ;
syntax DvUnsignedInt
        = 
        dv: ANY
 ;
syntax DvUnsignedLong
        = 
        dv: ANY
 ;
syntax DvUnsignedShort
        = 
        dv: ANY
 ;
syntax DvURI
        = 
        dv: ANY
 ;
syntax Element
        = 
        dv: DvAny
 ;
syntax EntityRef
        = 
        ANY uuid ANY namespace ANY objType
 ;
syntax Entry
        = AdminEntry
        | CareEntry
 ;
syntax Evaluation
        = 
        data: ItemStructure
 ;
syntax Event
        = IntervalEvent
        | PointEvent
 ;
syntax EventContext
        = 
        Organization healthcareFacility DvTemporal startTime DvTemporal endTime Participation participation Location location DvCodedString setting
 ;
syntax ExceptionalValue
        = 
        NI
 ;
syntax FeederAudit
        = 
        FeederAuditDetails originatingSystemAudit DvIdentifier originatingSystemItemIds+ FeederAuditDetails feederSystemAudit DvIdentifier feederSystemIds+ DvEncapsulated originalContent
 ;
syntax FeederAuditDetails
        = 
        DvIdentifier systemId DvNormalizedString versionId PartyIdentified provider Location location DvTemporal time PartyProxy subject+
 ;
syntax Folder
        = 
        Composition items+
 ;
syntax Group
        = 
        Party members+
 ;
syntax History
        = 
        DvTemporal origin Event events+ DvDuration period DvDuration duration ItemStructure summary
 ;
syntax Instruction
        = 
        DvTemporal expiryTime DvString narrative DvParsable wfDefinition Activity activities+
 ;
syntax IntervalEvent
        = 
        DvDuration width DvCodedString mathFunction DvCount sampleCount
 ;
syntax INV
        = DER
        | OTH
        | UNC
 ;
syntax Item
        = Cluster
        | Element
        | Slot
 ;
syntax ItemList
        = 
        Item items+
 ;
syntax ItemSingle
        = 
        item: Item
 ;
syntax ItemStructure
        = ItemList
        | ItemSingle
        | ItemTable
        | ItemTree
 ;
syntax ItemTable
        = 
        Cluster rows+
 ;
syntax ItemTree
        = 
        Item items+
 ;
syntax Link
        = 
        Relationship relation DvToken target
 ;
syntax Locatable
        = Activity
        | Attestation
        | Composition
        | ContentItem
        | DataStructure
        | Event
        | EventContext
        | Folder
        | Item
        | Location
        | Party
        | Relationship
        | Role
 ;
syntax Location
        = 
        ItemStructure details DvString description DvBoolean isPrimary
 ;
syntax MetaDataEntry
        = 
        String title String contents
 ;
syntax MetaDataSet
        = 
        String name MetaDataEntry entries+
 ;
syntax MSK
        = 
        ()
 ;
syntax NA
        = 
        ()
 ;
syntax NASK
        = 
        ()
 ;
syntax NAV
        = 
        ()
 ;
syntax NI
        = INV
        | MSK
        | NA
        | UNK
 ;
syntax NINF
        = 
        ()
 ;
syntax NonHuman
        = 
        details: ItemStructure
 ;
syntax ObjectRef
        = EntityRef
        | ANY uuid ANY namespace ANY objType
 ;
syntax Observation
        = 
        History data History state
 ;
syntax Ontology
        = 
        String names+ String internalVocabularies+ String lookupTables+ String terminologies+ OntologyEntry generalEntries+
 ;
syntax OntologyEntry
        = 
        String contents+
 ;
syntax Organization
        = 
        details: ItemStructure
 ;
syntax OTH
        = NINF
        | PINF
 ;
syntax Participation
        = 
        PartyProxy performer DvCodedString function DvCodedString mode DvTemporal time
 ;
syntax Party
        = Device
        | Group
        | NonHuman
        | Organization
        | Person
 ;
syntax PartyIdentified
        = PartyRelated
        | DvString name DvIdentifier identifiers+
 ;
syntax PartyProxy
        = PartyIdentified
        | PartySelf
 ;
syntax PartyRelated
        = 
        relationship: Relationship
 ;
syntax PartySelf
        = 
        externalRef: EntityRef
 ;
syntax Person
        = 
        details: ItemStructure
 ;
syntax PINF
        = 
        ()
 ;
syntax PointEvent
        = 
        DvTemporal time DvAny data ItemStructure state
 ;
syntax QS
        = 
        ()
 ;
syntax ReferenceRange
        = 
        DvString definition DvInterval dataRange
 ;
syntax Relationship
        = 
        DvToken targets+
 ;
syntax Role
        = 
        ItemStructure details DvString description DvBoolean isPrimary
 ;
syntax Section
        = 
        ContentItem items+
 ;
syntax Slot
        = 
        DvToken ccd DvToken allowedCcds+
 ;
syntax TRC
        = 
        ()
 ;
syntax UNC
        = 
        ()
 ;
syntax UNK
        = ASKR
        | ASKU
        | NASK
        | QS
        | TRC
 ;
