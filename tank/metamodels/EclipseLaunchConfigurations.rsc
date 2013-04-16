@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module EclipseLaunchConfigurations

extend lang::std::Whitespace;

layout Standard = Whitespace* !>> [\u0009-\u000D \u0020 \u0085 \u00A0 \u1680 \u180E \u2000-\u200A \u2028 \u2029 \u202F \u205F \u3000];
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
syntax String
        = 
        String
 ;
syntax Boolean
        = "true"
        | "false"
 ;
