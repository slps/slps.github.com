@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module Stereo

extend lang::std::Whitespace;

layout Standard = Whitespace* !>> [\u0009-\u000D \u0020 \u0085 \u00A0 \u1680 \u180E \u2000-\u200A \u2028 \u2029 \u202F \u205F \u3000];
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
