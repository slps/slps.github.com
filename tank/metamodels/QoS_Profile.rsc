@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module QoS_Profile

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
