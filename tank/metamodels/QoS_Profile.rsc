@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module QoS_Profile

syntax QoSComponent
        = 
        ANY operations ANY profile+
 ;
syntax Operation
        = 
        ()
 ;
syntax QoSProfile
        = 
        ()
 ;
syntax CompoundProfile
        = 
        ANY profileTransition+ ANY simpleProfile+
 ;
syntax SimpleProfile
        = 
        ANY compoundProfile ANY uses ANY provides
 ;
syntax QoSStatement
        = 
        ()
 ;
syntax ProfileTransition
        = 
        ANY operations+ ANY from ANY to ANY compoundProfile
 ;
