@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module QoS_Statement

syntax QoSStatement
        = 
        ANY relation ANY parameter+
 ;
syntax SingleQoSStatement
        = 
        contraint: ANY
 ;
syntax CoumpoundQoSStatement
        = 
        statement: ANY
 ;
syntax Parameter
        = 
        ()
 ;
syntax QoSContraint
        = 
        qualification: ANY
 ;
syntax QualificationKind
        = 
        value: ANY
 ;
syntax QoSCharacteristic
        = 
        ()
 ;
