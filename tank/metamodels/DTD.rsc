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
        = 
        ()
 ;
syntax Notation
        = 
        content: ANY
 ;
syntax Entity
        = 
        ANY content ANY isInternal
 ;
syntax Element
        = 
        ()
 ;
syntax AnyElement
        = 
        
 ;
syntax RestrictedElement
        = 
        content: ANY
 ;
syntax ElementContent
        = 
        ()
 ;
syntax Mixed
        = 
        elements: ANY
 ;
syntax Children
        = 
        ()
 ;
syntax Sequence
        = 
        children: ANY
 ;
syntax Leaf
        = 
        elementName: ANY
 ;
syntax Choice
        = 
        childrenChoice: ANY
 ;
syntax AttributeList
        = 
        ANY containsAttributes+
 ;
syntax AttributeDescription
        = 
        ()
 ;
syntax NoDefaultValue
        = 
        isRequired: ANY
 ;
syntax DefaultValue
        = 
        ANY value ANY isFixed
 ;
syntax AttributeType
        = 
        ()
 ;
syntax Enumeration
        = 
        values: ANY
 ;
syntax OtherAttributeType
        = 
        type: ANY
 ;
