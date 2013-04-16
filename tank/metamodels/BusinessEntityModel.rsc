@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module BusinessEntityModel

extend lang::std::Whitespace;

layout Standard = Whitespace* !>> [\u0009-\u000D \u0020 \u0085 \u00A0 \u1680 \u180E \u2000-\u200A \u2028 \u2029 \u202F \u205F \u3000];
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
