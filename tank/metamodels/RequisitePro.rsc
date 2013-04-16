@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module RequisitePro

extend lang::std::Whitespace;

layout Standard = Whitespace* !>> [\u0009-\u000D \u0020 \u0085 \u00A0 \u1680 \u180E \u2000-\u200A \u2028 \u2029 \u202F \u205F \u3000];
syntax DescribedElt
        = Document
        | ContainerElt
 ;
syntax NamedElt
        = ContainerElt
        | Requirement
 ;
syntax ContainerElt
        = Project
        | Package
 ;
syntax Project
        = 
        ContainedElt content+ Package packages+
 ;
syntax Package
        = 
        parentPackage: ContainerElt
 ;
syntax TypedElt
        = 
        Attribute
 ;
syntax Document
        = 
        description: String
 ;
syntax Attribute
        = 
        value: String
 ;
syntax Requirement
        = 
        String text Attribute attributes+ Document location Requirement parent Requirement children+ Requirement coverLink+
 ;
syntax String
        = 
        String
 ;
