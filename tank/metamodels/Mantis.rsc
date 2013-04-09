@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module Mantis

syntax RelationshipType
        = rt_related to: ()
        | rt_parent of: ()
        | rt_child of: ()
        | rt_duplicate of: ()
        | rt_has duplicate: ()
 ;
syntax MantisRoot
        = 
        ANY issues+
 ;
syntax IdentifiedElt
        = 
        ()
 ;
syntax PrivateElt
        = 
        ()
 ;
syntax Issue
        = 
        ANY i_mantisRoot ANY project ANY category ANY priority ANY severity ANY status ANY reporter ANY summary ANY description ANY version ANY build ANY platform ANY os ANY osVersion ANY reproducibility ANY stepsToReproduce ANY additionalInfo ANY dateSubmitted ANY assignedTo ANY projection ANY eta ANY resolution ANY fixedInVersion ANY attachments+ ANY relationships+ ANY notes+ ANY lastUpdate
 ;
syntax ValueWithId
        = 
        value: ANY
 ;
syntax Person
        = 
        login: ANY
 ;
syntax Relationship
        = 
        type: ANY
 ;
syntax TimeStampedElt
        = 
        ()
 ;
syntax Note
        = 
        ANY author ANY text
 ;
syntax Attachment
        = 
        ANY filename ANY size ANY contentType ANY downloadUrl
 ;
