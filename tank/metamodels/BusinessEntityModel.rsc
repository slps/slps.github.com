@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module BusinessEntityModel

syntax DataType
        = 
        ()
 ;
syntax Action
        = 
        ()
 ;
syntax Class
        = 
        ()
 ;
syntax BusinessEntityPropertySet
        = 
        ()
 ;
syntax BusinessRole
        = 
        ()
 ;
syntax Task
        = 
        ANY associatedWith+ ANY needs+
 ;
syntax ArtifactRole
        = 
        ANY characterisedby ANY typ ANY task+ ANY fille+
 ;
syntax PerformerRole
        = 
        perform: ANY
 ;
syntax OrganisationalUnit
        = 
        ANY characterisedby ANY typ ANY task+ ANY fille+
 ;
syntax BusinessEntity
        = 
        ANY placehold+
 ;
