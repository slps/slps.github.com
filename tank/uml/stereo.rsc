@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module Stereo

syntax ModelElement
        = 
        ANY referenceTag+ ANY stereotype+ ANY constraint+ ANY taggedValue+
 ;
syntax Constraint
        = 
        ANY constrainedElement+ ANY constrainedStereotype
 ;
syntax TaggedValue
        = 
        ANY dataValue ANY referenceValue+ ANY type
 ;
syntax TagDefinition
        = 
        ANY tagType ANY multiplicity ANY typedValue+ ANY owner
 ;
syntax Multiplicity
        = 
        value: ANY
 ;
syntax GeneralizableElement
        = 
        ()
 ;
syntax Stereotype
        = 
        ANY icon ANY baseClass+ ANY definedTag+ ANY stereotypeConstraint+ ANY extendedElement+
 ;
syntax Geometry
        = 
        value: ANY
 ;
syntax Name
        = 
        value: ANY
 ;
