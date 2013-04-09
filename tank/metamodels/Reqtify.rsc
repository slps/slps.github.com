@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module Reqtify

syntax Project
        = 
        ANY documents+
 ;
syntax TypedElement
        = 
        ()
 ;
syntax ElementWithIL
        = 
        ()
 ;
syntax Document
        = 
        ANY project ANY sections+
 ;
syntax TextElement
        = 
        ()
 ;
syntax Section
        = 
        ANY document ANY sectionChildren+ ANY sectionParent ANY requirements+
 ;
syntax AbstractRequirement
        = 
        ()
 ;
syntax Requirement
        = 
        ANY section ANY isContained ANY coverLinks+ ANY attribute+
 ;
syntax MacroRequirement
        = 
        ANY contains+
 ;
syntax CoverLink
        = 
        linkWith: ANY
 ;
syntax Attribute
        = 
        value: ANY
 ;
