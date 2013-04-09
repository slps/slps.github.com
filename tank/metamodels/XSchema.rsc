@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module XSchema

syntax AttributeUseType
        = null: ()
        | optional: ()
        | prohibited: ()
        | required: ()
 ;
syntax AnnotedElement
        = 
        ()
 ;
syntax Annotation
        = 
        ANY documentations+ ANY applicationInfos+ ANY annotedElement
 ;
syntax Documentation
        = 
        text: ANY
 ;
syntax ApplicationInfo
        = 
        text: ANY
 ;
syntax NamedElement
        = 
        ()
 ;
syntax XSchema
        = 
        ANY namespace ANY contents+
 ;
syntax XSchemaContentElement
        = 
        ()
 ;
syntax Parameters
        = 
        ()
 ;
syntax Element
        = 
        ANY references+
 ;
syntax Occurable
        = 
        ()
 ;
syntax AbstractContent
        = 
        ()
 ;
syntax Container
        = 
        ()
 ;
syntax AtomicContent
        = 
        ()
 ;
syntax ElementRef
        = 
        referencedElement: ANY
 ;
syntax GroupRef
        = 
        referencedGroup: ANY
 ;
syntax All
        = 
        ANY contents+
 ;
syntax Group
        = 
        ANY references+
 ;
syntax Choice
        = 
        ANY contents+
 ;
syntax Sequence
        = 
        ANY contents+
 ;
syntax AbstractAttributeGroupContent
        = 
        ()
 ;
syntax AttributeGroup
        = 
        ANY contents+ ANY references+
 ;
syntax AttributeGroupRef
        = 
        referencedAttributeGroup: ANY
 ;
syntax AtomicAttributeGroupContent
        = 
        ()
 ;
syntax Attribute
        = 
        ANY use ANY references+
 ;
syntax AttributeRef
        = 
        referencedAttribute: ANY
 ;
syntax AbstractType
        = 
        ()
 ;
syntax SimpleType
        = 
        ANY extensions+
 ;
syntax ComplexType
        = 
        ANY extensions+ ANY content ANY attributes+
 ;
syntax ComplexTypeSimpleContent
        = 
        base: ANY
 ;
syntax ComplexTypeComplexContent
        = 
        base: ANY
 ;
