@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module DTD

extend lang::std::Whitespace;

layout Standard = Whitespace* !>> [\u0009-\u000D \u0020 \u0085 \u00A0 \u1680 \u180E \u2000-\u200A \u2028 \u2029 \u202F \u205F \u3000];
syntax Occurence
        = zeroOrOne: ()
        | zeroOrMore: ()
        | oneOrMore: ()
        | one: ()
 ;
syntax OtherAttributeTypeEnum
        = cdata: ()
        | id: ()
        | idref: ()
        | entityType: ()
        | entities: ()
        | nmtoken: ()
        | nmtakens: ()
 ;
syntax TypeDescription
        = Notation
        | Entity
        | Element
        | AttributeList
        | AttributeDescription
 ;
syntax Notation
        = 
        content: String
 ;
syntax Entity
        = 
        String content Boolean isInternal
 ;
syntax Element
        = AnyElement
        | RestrictedElement
 ;
syntax AnyElement
        = 
        ()
 ;
syntax RestrictedElement
        = 
        content: ElementContent
 ;
syntax ElementContent
        = Mixed
        | Children
 ;
syntax Mixed
        = 
        elements: String
 ;
syntax Children
        = Sequence
        | Leaf
        | Choice
 ;
syntax Sequence
        = 
        children: Children
 ;
syntax Leaf
        = 
        elementName: String
 ;
syntax Choice
        = 
        childrenChoice: Children
 ;
syntax AttributeList
        = 
        AttributeDescription containsAttributes+
 ;
syntax AttributeDescription
        = NoDefaultValue
        | DefaultValue
 ;
syntax NoDefaultValue
        = 
        isRequired: Boolean
 ;
syntax DefaultValue
        = 
        String value Boolean isFixed
 ;
syntax AttributeType
        = 
        Enumeration
 ;
syntax Enumeration
        = 
        values: String
 ;
syntax OtherAttributeType
        = 
        type: OtherAttributeTypeEnum
 ;
syntax String
        = 
        String
 ;
syntax Boolean
        = "true"
        | "false"
 ;
