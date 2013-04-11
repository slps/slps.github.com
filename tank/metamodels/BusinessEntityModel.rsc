@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module BusinessEntityModel

syntax DataType
        = 
        BusinessEntityPropertySet
 ;
syntax Action
        = 
        BusinessRole
 ;
syntax Class
        = 
        BusinessEntity
 ;
syntax BusinessRole
        = ArtifactRole
        | PerformerRole
        | OrganisationalUnit
 ;
syntax Task
        = 
        BusinessRole associatedWith+ ArtifactRole needs+
 ;
syntax ArtifactRole
        = 
        BusinessEntityPropertySet characterisedby Class typ Task task+ BusinessEntity fille+
 ;
syntax PerformerRole
        = 
        perform: Task
 ;
syntax OrganisationalUnit
        = 
        BusinessEntityPropertySet characterisedby Class typ Task task+ BusinessEntity fille+
 ;
syntax BusinessEntity
        = 
        BusinessRole placehold+
 ;
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
