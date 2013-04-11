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
        Issue issues+
 ;
syntax IdentifiedElt
        = ValueWithId
        | Relationship
        | Issue
 ;
syntax PrivateElt
        = Issue
        | Note
 ;
syntax Issue
        = 
        MantisRoot i_mantisRoot ValueWithId project String category ValueWithId priority ValueWithId severity ValueWithId status Person reporter String summary String description String version String build String platform String os String osVersion ValueWithId reproducibility String stepsToReproduce String additionalInfo Integer dateSubmitted Person assignedTo ValueWithId projection ValueWithId eta ValueWithId resolution String fixedInVersion Attachment attachments+ Relationship relationships+ Note notes+ Integer lastUpdate
 ;
syntax ValueWithId
        = Person
        | value: String
 ;
syntax Person
        = 
        login: String
 ;
syntax Relationship
        = 
        type: RelationshipType
 ;
syntax TimeStampedElt
        = Attachment
        | Note
 ;
syntax Note
        = 
        Person author String text
 ;
syntax Attachment
        = 
        String filename Integer size String contentType String downloadUrl
 ;
syntax Integer
        = 
        Integer
 ;
syntax String
        = 
        String
 ;
syntax Boolean
        = "true"
        | "false"
 ;
