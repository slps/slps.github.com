@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module QoS_Statement

extend lang::std::Whitespace;

layout Standard = Whitespace* !>> [\u0009-\u000D \u0020 \u0085 \u00A0 \u1680 \u180E \u2000-\u200A \u2028 \u2029 \u202F \u205F \u3000];
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
