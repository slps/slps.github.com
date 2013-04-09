@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module EclipseLaunchConfigurations

syntax LaunchConfiguration
        = 
        ANY type ANY attributes+
 ;
syntax Attribute
        = 
        ()
 ;
syntax StringAttribute
        = 
        value: ANY
 ;
syntax BooleanAttribute
        = 
        value: ANY
 ;
syntax MapAttribute
        = 
        ANY entries+
 ;
syntax MapEntry
        = 
        mapAttribute: ANY
 ;
syntax ListAttribute
        = 
        ANY entries+
 ;
syntax ListEntry
        = 
        ANY listAttribute ANY value
 ;
