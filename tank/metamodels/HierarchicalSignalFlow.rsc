@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module HierarchicalSignalFlow

extend lang::std::Whitespace;

layout Standard = Whitespace* !>> [\u0009-\u000D \u0020 \u0085 \u00A0 \u1680 \u180E \u2000-\u200A \u2028 \u2029 \u202F \u205F \u3000];
syntax String
        = 
        String
 ;
syntax Integer
        = 
        Integer
 ;
syntax Port
        = InputPort
        | OutputPort
        | LocalPort
        | Asso_Port_Signal asso_Port_Signalsrc Asso_Port_Signal asso_Port_Signaldst
 ;
syntax Signal
        = 
        Base base Asso_Port_Signal asso_Port_Signal
 ;
syntax Base
        = Compound
        | Primitive
        | Compound compound InputPort inputPort+ OutputPort outputPort+ Signal signal+
 ;
syntax Compound
        = 
        LocalPort localPort+ Base base+
 ;
syntax InputPort
        = 
        base: Base
 ;
syntax OutputPort
        = 
        base: Base
 ;
syntax LocalPort
        = 
        compound: Compound
 ;
syntax Primitive
        = 
        Compound compound InputPort inputPort+ OutputPort outputPort+ Signal signal+
 ;
syntax Asso_Port_Signal
        = 
        Port src+ Port dst+ Signal signal
 ;
