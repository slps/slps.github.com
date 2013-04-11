@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module QoS_Statement

syntax QoSStatement
        = SingleQoSStatement
        | CoumpoundQoSStatement
        | CoumpoundQoSStatement relation Parameter parameter+
 ;
syntax SingleQoSStatement
        = 
        contraint: QoSContraint
 ;
syntax CoumpoundQoSStatement
        = 
        statement: QoSStatement
 ;
syntax Parameter
        = 
        ()
 ;
syntax QoSContraint
        = 
        qualification: QualificationKind
 ;
syntax QualificationKind
        = 
        value: String
 ;
syntax QoSCharacteristic
        = 
        QualificationKind
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
