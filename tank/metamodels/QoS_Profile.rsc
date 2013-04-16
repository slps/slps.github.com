@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module QoS_Profile

extend lang::std::Whitespace;

layout Standard = Whitespace* !>> [\u0009-\u000D \u0020 \u0085 \u00A0 \u1680 \u180E \u2000-\u200A \u2028 \u2029 \u202F \u205F \u3000];
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
syntax QoSComponent
        = 
        Operation operations QoSProfile profile+
 ;
syntax Operation
        = 
        ()
 ;
syntax QoSProfile
        = CompoundProfile
        | SimpleProfile
 ;
syntax CompoundProfile
        = 
        ProfileTransition profileTransition+ SimpleProfile simpleProfile+
 ;
syntax SimpleProfile
        = 
        CompoundProfile compoundProfile QoSStatement uses QoSStatement provides
 ;
syntax QoSStatement
        = 
        ()
 ;
syntax ProfileTransition
        = 
        Operation operations+ SimpleProfile from SimpleProfile to CompoundProfile compoundProfile
 ;
