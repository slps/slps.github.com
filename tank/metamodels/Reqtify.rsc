@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module Reqtify

extend lang::std::Whitespace;

layout Standard = Whitespace* !>> [\u0009-\u000D \u0020 \u0085 \u00A0 \u1680 \u180E \u2000-\u200A \u2028 \u2029 \u202F \u205F \u3000];
syntax Project
        = 
        Document documents+
 ;
syntax TypedElement
        = ElementWithIL
        | CoverLink
        | Attribute
 ;
syntax ElementWithIL
        = Document
        | TextElement
 ;
syntax Document
        = 
        Project project Section sections+
 ;
syntax TextElement
        = Section
        | AbstractRequirement
 ;
syntax Section
        = 
        Document document Section sectionChildren+ Section sectionParent AbstractRequirement requirements+
 ;
syntax AbstractRequirement
        = Requirement
        | MacroRequirement
 ;
syntax Requirement
        = 
        Section section MacroRequirement isContained CoverLink coverLinks+ Attribute attribute+
 ;
syntax MacroRequirement
        = 
        AbstractRequirement contains+
 ;
syntax CoverLink
        = 
        linkWith: AbstractRequirement
 ;
syntax Attribute
        = 
        value: String
 ;
syntax String
        = 
        String
 ;
