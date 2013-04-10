@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module DTD

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
