@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module XSchema

syntax String
        = 
        String
 ;
syntax Integer
        = 
        Integer
 ;
syntax Boolean
        = "true"
        | "false"
 ;
syntax AttributeUseType
        = null: ()
        | optional: ()
        | prohibited: ()
        | required: ()
 ;
syntax AnnotedElement
        = NamedElement
        | XSchema
 ;
syntax Annotation
        = 
        Documentation documentations+ ApplicationInfo applicationInfos+ AnnotedElement annotedElement
 ;
syntax Documentation
        = 
        text: String
 ;
syntax ApplicationInfo
        = 
        text: String
 ;
syntax NamedElement
        = 
        XSchemaContentElement
 ;
syntax XSchema
        = 
        String namespace XSchemaContentElement contents+
 ;
syntax XSchemaContentElement
        = Parameters
        | AbstractType
        | Group
        | AttributeGroup
 ;
syntax Parameters
        = Element
        | Attribute
 ;
syntax Element
        = 
        ElementRef references+
 ;
syntax Occurable
        = AbstractContent
        | AbstractAttributeGroupContent
 ;
syntax AbstractContent
        = Container
        | AtomicContent
 ;
syntax Container
        = All
        | Choice
        | Sequence
        | Group
 ;
syntax AtomicContent
        = ElementRef
        | GroupRef
        | Element
 ;
syntax ElementRef
        = 
        referencedElement: Element
 ;
syntax GroupRef
        = 
        referencedGroup: Group
 ;
syntax All
        = 
        AbstractContent contents+
 ;
syntax Group
        = 
        GroupRef references+
 ;
syntax Choice
        = 
        AbstractContent contents+
 ;
syntax Sequence
        = 
        AbstractContent contents+
 ;
syntax AbstractAttributeGroupContent
        = AtomicAttributeGroupContent
        | AttributeGroup
 ;
syntax AttributeGroup
        = 
        AbstractAttributeGroupContent contents+ AttributeGroupRef references+
 ;
syntax AttributeGroupRef
        = 
        referencedAttributeGroup: AttributeGroup
 ;
syntax AtomicAttributeGroupContent
        = AttributeGroupRef
        | AttributeRef
        | Attribute
 ;
syntax Attribute
        = 
        AttributeUseType use AttributeRef references+
 ;
syntax AttributeRef
        = 
        referencedAttribute: Attribute
 ;
syntax AbstractType
        = SimpleType
        | ComplexType
 ;
syntax SimpleType
        = 
        ComplexTypeSimpleContent extensions+
 ;
syntax ComplexType
        = ComplexTypeSimpleContent
        | ComplexTypeComplexContent
        | ComplexTypeComplexContent extensions+ AbstractContent content AbstractAttributeGroupContent attributes+
 ;
syntax ComplexTypeSimpleContent
        = 
        base: SimpleType
 ;
syntax ComplexTypeComplexContent
        = 
        base: ComplexType
 ;
