@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module Reqtify

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
