@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module EclipseLaunchConfigurations

syntax LaunchConfiguration
        = 
        String type Attribute attributes+
 ;
syntax Attribute
        = StringAttribute
        | BooleanAttribute
        | MapAttribute
        | ListAttribute
 ;
syntax StringAttribute
        = MapEntry
        | value: String
 ;
syntax BooleanAttribute
        = 
        value: Boolean
 ;
syntax MapAttribute
        = 
        MapEntry entries+
 ;
syntax MapEntry
        = 
        mapAttribute: MapAttribute
 ;
syntax ListAttribute
        = 
        ListEntry entries+
 ;
syntax ListEntry
        = 
        ListAttribute listAttribute String value
 ;
