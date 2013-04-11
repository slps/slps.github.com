@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module Stereo

syntax ModelElement
        = TagDefinition
        | TaggedValue referenceTag+ Stereotype stereotype+ Constraint constraint+ TaggedValue taggedValue+
 ;
syntax Constraint
        = 
        ModelElement constrainedElement+ Stereotype constrainedStereotype
 ;
syntax TaggedValue
        = 
        String dataValue ModelElement referenceValue+ TagDefinition type
 ;
syntax TagDefinition
        = 
        String tagType Multiplicity multiplicity TaggedValue typedValue+ Stereotype owner
 ;
syntax Multiplicity
        = 
        value: String
 ;
syntax GeneralizableElement
        = 
        Stereotype
 ;
syntax Stereotype
        = 
        Geometry icon Name baseClass+ TagDefinition definedTag+ Constraint stereotypeConstraint+ ModelElement extendedElement+
 ;
syntax Geometry
        = 
        value: String
 ;
syntax Name
        = 
        value: String
 ;
