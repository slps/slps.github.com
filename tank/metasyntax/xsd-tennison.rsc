@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module Xsd_tennison

extend lang::std::Whitespace;

layout Standard = Whitespace* !>> [\u0009-\u000D \u0020 \u0085 \u00A0 \u1680 \u180E \u2000-\u200A \u2028 \u2029 \u202F \u205F \u3000];
syntax OpenAttrs
        = 
        String*
 ;
syntax Annotated
        = 
        OpenAttrs String id? Annotation?
 ;
syntax SchemaTop
        = Redefinable
        | TopLevelElement
        | TopLevelAttribute
        | Notation
 ;
syntax Redefinable
        = TopLevelSimpleType
        | TopLevelComplexType
        | NamedGroup
        | NamedAttributeGroup
 ;
syntax FormChoice
        = "qualified"
        | "unqualified"
 ;
syntax ReducedDerivationControl
        = 
        ("extension" | "restriction")*
 ;
syntax DerivationSet
        = "#all"
        | ReducedDerivationControl
 ;
syntax AllNNI
        = Integer
        | "unbounded"
 ;
syntax Occurs
        = 
        (Integer minOccurs | AllNNI maxOccurs)*
 ;
syntax TypeDefParticle
        = GroupRef
        | All
        | Choice
        | Sequence
 ;
syntax NestedParticle
        = LocalElement
        | GroupRef
        | Choice
        | Sequence
        | Any
 ;
syntax FixedOrDefault
        = ()
        | fixed: String
        | default: String
 ;
syntax AttributeType
        = ()
        | type: String
        | LocalSimpleType
 ;
syntax LocalAttribute
        = 
        attribute: Annotated ("optional" | "prohibited" | "required") use? FixedOrDefault (String ref | (String name FormChoice form? AttributeType))
 ;
syntax TopLevelAttribute
        = 
        attribute: Annotated String name FixedOrDefault AttributeType
 ;
syntax AttrDecls
        = 
        (LocalAttribute | AttributeGroupRef)* AnyAttribute?
 ;
syntax AnyAttribute
        = 
        anyAttribute: Wildcard
 ;
syntax ComplexTypeModel
        = SimpleContent
        | ("true" | "false") mixed? (ComplexContent | (TypeDefParticle? AttrDecls))
 ;
syntax ComplexType
        = 
        Annotated ComplexTypeModel
 ;
syntax TopLevelComplexType
        = 
        complexType: ComplexType String name (("true" | "false") abstract | DerivationSet block | DerivationSet final)*
 ;
syntax LocalComplexType
        = 
        complexType: ComplexType
 ;
syntax ComplexRestriction
        = 
        restriction: Annotated String base TypeDefParticle? AttrDecls
 ;
syntax ExtensionType
        = 
        Annotated String base
 ;
syntax ComplexExtension
        = 
        extension: ExtensionType TypeDefParticle? AttrDecls
 ;
syntax ComplexContent
        = 
        complexContent: Annotated ("true" | "false") mixed? (ComplexRestriction | ComplexExtension)
 ;
syntax SimpleRestriction
        = 
        restriction: Annotated SimpleRestrictionModel AttrDecls
 ;
syntax SimpleExtension
        = 
        extension: ExtensionType AttrDecls
 ;
syntax SimpleContent
        = 
        simpleContent: Annotated (SimpleRestriction | SimpleExtension)
 ;
syntax BlockSet
        = "#all"
        | ("extension" | "restriction" | "substitution")*
 ;
syntax Element
        = 
        Annotated FixedOrDefault (("true" | "false") nillable | BlockSet block)* (() | String type | LocalSimpleType | LocalComplexType) IdentityConstraint*
 ;
syntax TopLevelElement
        = 
        element: Element String name (String substitutionGroup | ("true" | "false") abstract | DerivationSet final)*
 ;
syntax LocalElement
        = 
        element: Occurs (String ref | (Element String name FormChoice form?))
 ;
syntax NamedGroup
        = 
        group: Annotated String name (AllModel all | SimpleExplicitGroup choice | SimpleExplicitGroup sequence)
 ;
syntax GroupRef
        = 
        group: Annotated Occurs String ref
 ;
syntax ExplicitGroup
        = 
        Annotated Occurs NestedParticle*
 ;
syntax SimpleExplicitGroup
        = 
        Annotated NestedParticle*
 ;
syntax AllModel
        = 
        Annotated ((("0" | "1") minOccurs | ("0" | "1") maxOccurs)* (String ref | (Element String name FormChoice form?))) element*
 ;
syntax All
        = 
        all: AllModel (("0" | "1") minOccurs | "1" maxOccurs)*
 ;
syntax Choice
        = 
        choice: ExplicitGroup
 ;
syntax Sequence
        = 
        sequence: ExplicitGroup
 ;
syntax Wildcard
        = 
        Annotated (("##any" | "##other" | (String | "##targetNamespace" | "##local")*) namespace | ("lax" | "skip" | "strict") processContents)*
 ;
syntax Any
        = 
        any: Wildcard Occurs
 ;
syntax NamedAttributeGroup
        = 
        attributeGroup: Annotated String name AttrDecls
 ;
syntax AttributeGroupRef
        = 
        attributeGroup: Annotated String ref
 ;
syntax Include
        = 
        include: Annotated String schemaLocation
 ;
syntax Redefine
        = 
        redefine: OpenAttrs String id? String schemaLocation (Annotation | Redefinable)*
 ;
syntax Import
        = 
        Annotated String schemaLocation?
 ;
syntax ImportRequiredNamespace
        = 
        import: Import String namespace
 ;
syntax ImportOptionalNamespace
        = 
        import: Import String namespace?
 ;
syntax Selector
        = 
        selector: Annotated String xpath
 ;
syntax Field
        = 
        field: Annotated String xpath
 ;
syntax Keybase
        = 
        Annotated String name Selector Field+
 ;
syntax IdentityConstraint
        = Unique
        | Key
        | Keyref
 ;
syntax Unique
        = 
        unique: Keybase
 ;
syntax Key
        = 
        key: Keybase
 ;
syntax Keyref
        = 
        keyref: Keybase String refer
 ;
syntax Notation
        = 
        notation: Annotated String name String public String system?
 ;
syntax AppinfoContent
        = 
        AnyContent
 ;
syntax AnyContent
        = 
        (String | (ANY* AnyContent))*
 ;
syntax Appinfo
        = 
        appinfo: String source? AppinfoContent
 ;
syntax DocumentationContent
        = 
        AnyContent
 ;
syntax Documentation
        = 
        documentation: (String source | String xml:lang)* DocumentationContent
 ;
syntax Annotation
        = 
        annotation: OpenAttrs String id? (Documentation | Appinfo)*
 ;
syntax SimpleDerivation
        = SimpleRestriction
        | List
        | Union
 ;
syntax SimpleDerivationSet
        = "#all"
        | ("list" | "union" | "restriction")*
 ;
syntax SimpleType
        = 
        Annotated SimpleDerivation
 ;
syntax TopLevelSimpleType
        = 
        simpleType: SimpleType String name SimpleDerivationSet final?
 ;
syntax LocalSimpleType
        = 
        simpleType: SimpleType
 ;
syntax RangeFacets
        = 
        (MinExclusive | MinInclusive)? (MaxExclusive | MaxInclusive)?
 ;
syntax DigitFacets
        = 
        TotalDigits? FractionDigits?
 ;
syntax LengthFacets
        = Length
        | MinLength? MaxLength?
 ;
syntax CommonFacets
        = 
        Enumeration* WhiteSpaceCollapse? Pattern*
 ;
syntax SimpleRestrictionModel
        = "xs:anySimpleType" base RangeFacets DigitFacets LengthFacets WhiteSpace? Enumeration* Pattern*
        | "xs:string" base LengthFacets WhiteSpace? Enumeration* Pattern*
        | "xs:normalizedString" base LengthFacets WhiteSpaceReplaceOrCollapse? Enumeration* Pattern*
        | ("xs:token" | "xs:language" | "xs:Name" | "xs:NCName" | "xs:ID" | "xs:IDREF" | "xs:IDREFS" | "xs:NMTOKEN" | "xs:NMTOKENS" | "xs:ENTITY" | "xs:ENTITIES" | "xs:hexBinary" | "xs:base64Binary" | "xs:anyURI" | "xs:QName" | "xs:NOTATION") base LengthFacets CommonFacets
        | "xs:boolean" base WhiteSpaceCollapse? Pattern*
        | ("xs:decimal" | "xs:integer" | "xs:nonPositiveInteger" | "xs:nonNegativeInteger" | "xs:positiveInteger" | "xs:negativeInteger" | "xs:unsignedLong" | "xs:unsignedInt" | "xs:unsignedShort" | "xs:unsignedByte" | "xs:long" | "xs:int" | "xs:short" | "xs:byte") base DigitFacets RangeFacets CommonFacets
        | ("xs:float" | "xs:double" | "xs:duration" | "xs:dateTime" | "xs:time" | "xs:date" | "xs:gYearMonth" | "xs:gYear" | "xs:gMonthDay" | "xs:gMonth" | "xs:gDay") base RangeFacets CommonFacets
        | (String base | LocalSimpleType) RangeFacets DigitFacets LengthFacets WhiteSpace? Enumeration* Pattern*
 ;
syntax List
        = 
        list: Annotated (LocalSimpleType | String itemType)
 ;
syntax Union
        = 
        union: Annotated ((String+ memberTypes LocalSimpleType*) | (() memberTypes? LocalSimpleType+))
 ;
syntax Facet
        = 
        Annotated ("true" | "false") fixed?
 ;
syntax NoFixedFacet
        = 
        Annotated String value
 ;
syntax RangeFacet
        = 
        Facet (Integer | String | "UNKNOWN data") value
 ;
syntax MinExclusive
        = 
        minExclusive: RangeFacet
 ;
syntax MinInclusive
        = 
        minInclusive: RangeFacet
 ;
syntax MaxExclusive
        = 
        maxExclusive: RangeFacet
 ;
syntax MaxInclusive
        = 
        maxInclusive: RangeFacet
 ;
syntax NumFacet
        = 
        Facet Integer value
 ;
syntax TotalDigits
        = 
        totalDigits: Facet Integer value
 ;
syntax FractionDigits
        = 
        fractionDigits: NumFacet
 ;
syntax Length
        = 
        length: NumFacet
 ;
syntax MinLength
        = 
        minLength: NumFacet
 ;
syntax MaxLength
        = 
        maxLength: NumFacet
 ;
syntax Enumeration
        = 
        enumeration: NoFixedFacet
 ;
syntax WhiteSpace
        = 
        whiteSpace: Facet ("preserve" | "replace" | "collapse") value
 ;
syntax WhiteSpaceReplaceOrCollapse
        = 
        whiteSpace: Facet ("replace" | "collapse") value
 ;
syntax WhiteSpaceCollapse
        = 
        whiteSpace: Facet "collapse" value
 ;
syntax Pattern
        = 
        pattern: NoFixedFacet
 ;
